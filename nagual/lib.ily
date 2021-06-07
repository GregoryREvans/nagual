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
