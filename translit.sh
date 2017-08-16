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

if [ ! $* ]
then

    echo "Информация: Яндекс транслит для генерации SEO ссылок"
    echo "Использование: translit <текст на кириллице>"

else

    echo $* | sed -f translit.sed

fi

exit 0
