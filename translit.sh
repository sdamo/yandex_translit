#!/usr/bin/env bash

# Яндекс транслит

# +-----------------+---------------------------------------------+
# | Регистр букв    |                    нижний                   |
# | Разделение слов |                    дефис                    |
# |        а        |                      a                      |
# |        б        |                      b                      |
# |        в        |                      v                      |
# |        г        |                      g                      |
# |        д        |                      d                      |
# |        е        |                      e                      |
# |        ё        |                      yo                     |
# |        ж        |                      zh                     |
# |        з        |                      z                      |
# |        и        |                      i                      |
# |        й        |                      j                      |
# |        к        |                      k                      |
# |        л        |                      l                      |
# |        м        |                      m                      |
# |        н        |                      n                      |
# |        о        |                      o                      |
# |        п        |                      p                      |
# |        р        |                      r                      |
# |        с        |                      s                      |
# |        т        |                      t                      |
# |        у        |                      u                      |
# |        ф        |                      f                      |
# |        х        | kh после букв c,s,e,h в остальных случаях h |
# |        х        |                      h                      |
# |        ц        |                      c                      |
# |        ч        |                      ch                     |
# |        ш        |                      sh                     |
# |        щ        |                     shch                    |
# |        ъ        |                                             |
# |        ы        |                      y                      |
# |        ь        |                                             |
# |        э        |                      eh                     |
# |        ю        |                      yu                     |
# |        я        |                      ya                     |
# +-----------------+---------------------------------------------+

TEXT_ORIGINAL=$*

declare -A COLOR
COLOR=(
    [CLEAR]="\033[0m"
    [RED]="\033[0;31m"
    [GREEN]="\033[0;32m"
)

if [ ! ${TEXT_ORIGINAL} ]
then

    echo "Информация: Яндекс транслит для генерации SEO ссылок"
    echo "Использование: translit <текст на кириллице>"

else

    TEXT_TRANSLIT=`echo ${TEXT_ORIGINAL} | sed -f translit.sed`

    echo -e "${COLOR[GREEN]}Оригинальный текст: ${COLOR[CLEAR]}${TEXT_ORIGINAL}"
    echo -e "${COLOR[RED]}Транслит: ${COLOR[CLEAR]}${TEXT_TRANSLIT}"

fi

exit 0
