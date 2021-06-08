colophon = \markup
{
    \override #'(font-name . "STIXGeneral")
    \with-color #white
    \right-column
    {
        \line
        {
            "\hspace #0.75 ............"
        }
        \with-color #black
        \line
        {
            Iowa City, Ia.
        }
        \with-color #black
        \line
        {
            \hspace #0.75 June 2021
        }
    }
}

normale-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "normale"

rit-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "ritardando"

staff-line-count = #(
    define-music-function (parser location number music) (number? ly:music?)
    #{
    \stopStaff
    \override Staff.StaffSymbol.line-count = ##'number
    \startStaff
    $music
    #}
    )

% experimental

#(define ((flared-tie coords) grob)

  (define (pair-to-list pair)
     (list (car pair) (cdr pair)))

  (define (normalize-coords goods x y dir)
    (map
      (lambda (coord)
        ;(coord-scale coord (cons x (* y dir)))
        (cons (* x (car coord)) (* y dir (cdr coord))))
      goods))

  (define (my-c-p-s points thick)
    (make-connected-path-stencil
      points
      thick
      1.0
      1.0
      #f
      #f))

  ;; outer let to trigger suicide
  (let ((sten (ly:tie::print grob)))
    (if (grob::is-live? grob)
        (let* ((layout (ly:grob-layout grob))
               (line-thickness (ly:output-def-lookup layout 'line-thickness))
               (thickness (ly:grob-property grob 'thickness 0.1))
               (used-thick (* line-thickness thickness))
               (dir (ly:grob-property grob 'direction))
               (xex (ly:stencil-extent sten X))
               (yex (ly:stencil-extent sten Y))
               (lenx (interval-length xex))
               (leny (interval-length yex))
               (xtrans (car xex))
               (ytrans (if (> dir 0)(car yex) (cdr yex)))
               (uplist
                 (map pair-to-list
                      (normalize-coords coords lenx (* leny 2) dir))))

   (ly:stencil-translate
       (my-c-p-s uplist used-thick)
     (cons xtrans ytrans)))
   '())))

#(define flare-tie
  (flared-tie '((0 . 0)(0.06 . 0.1) (0.94 . 0.1) (1.0 . 0.0))))

  #(define-markup-command (oval layout props arg)
   (markup?)
   #:properties ((thickness 1)
                 (font-size 0)
                 (oval-padding 0.5))
   (let ((th (* (ly:output-def-lookup layout 'line-thickness)
                thickness))
         (pad (* (magstep font-size) oval-padding))
         (m (interpret-markup layout props (markup #:hcenter-in 4.0 arg))))
     (oval-stencil m th pad (* pad 8.0))))

  #(define (oval-bar-numbers barnum measure-pos alt-number context)
   (make-oval-markup
    (robust-bar-number-function barnum measure-pos alt-number context)))

rehearsal-mark-markup = #(
    define-music-function
    (string font-size)
    (string? number?)
    #{
    - \tweak font-size #font-size
    - \markup
    \with-dimensions-from \null
    \halign #-1
    \override #'(box-padding . 0.5)
    \box
    { \combine \halign #0 #string \halign #0 \transparent "O" }
    #}
    )
