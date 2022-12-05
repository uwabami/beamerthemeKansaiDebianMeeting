#+TITLE: Kansai Debian Presentation template
#+AUTHOR: Youhei SASAKI
#+DATE: 2017-01-29 16:45:57
#+OPTIONS: H:2 num:t toc:nil \n:nil @:t ::t |:t ^:t -:t f:t *:t <:t
#+OPTIONS: TeX:t LaTeX:t skip:nil d:nil todo:t pri:nil tags:notintoc
#+STARTUP: beamer
#+LATEX_CLASS_OPTIONS: [unicode,presentation,c,squeeze,shrink,10pt]
#+BEAMER_FRAME_LEVEL: 2
#+BEAMER_THEME: [infoline,shadow]KansaiDebian
#+BEAMER_HEADER: \AtBeginSection[]{\begin{frame}<beamer>\frametitle{Outline}\tableofcontents[currentsection]\end{frame}}
* Kansai Debian Presentation template
** What is This?
   - Debian theme for latex-beamer
     - originally [[http://wiki.debian.org/KansaiDebianMeetingArchives?action=AttachFile&do=view&target=20081108-KGB-Kansai_debian_PR.odp][KansaiDebianMeeting OpenOffice Impress theme]]
       created by [[http://github.com/nogajun][Jun NOGATA]]
*** Output sample
    \centering
    #+ATTR_LaTeX: :width .3\textwidth :center
    [[file:images/images-1.png]]
    #+LaTeX: \hspace*{.5em}
    #+ATTR_LaTeX: :width .3\textwidth :center
    [[file:images/images-4.png]]
    #+LaTeX: \hspace*{.5em}
    #+ATTR_LaTeX: :width .3\textwidth :center
    [[file:images/images-5.png]]
** options
   =\usetheme[<options>]{KansaiDebian}=
   - =infoline= : show author/title/date information on footline.
   - =shadow= : Add drop-shadow to boxes.
   - =navigation= : show PDF navigation symbols
** New?
*** =\takahashi=                                                    :B_block:
    :PROPERTIES:
    :BEAMER_env: block
    :END:
    \centering
    write =\takahashi{Takahashi methods}= outside =frame= environment
#+BEGIN_EXPORT LATEX
\end{block}
\end{frame}
\takahashi[70]{Takahashi methods}
\begin{frame}{New: Takahashi methods}
\begin{block}{\texttt{\textbackslash{}takahashi}}
\centering
write \texttt{\textbackslash{}takahashi[70]\{Takahashi methods\}} outside \texttt{frame} environment
#+END_EXPORT
** Permission
*** All contents DFSG-Free.
     - Author: Youhei SASAKI <uwabami@gfd-dennou.org>
     - COPYING: LGPL-3. @see [[file:LGPL-3][LGPL-3]]
*** History
    :PROPERTIES:
    :BEAMER_env: alertblock
    :END:
     - see [[file:ChangeLog][ChangeLog]]
*** Needs help                                               :B_exampleblock:
    :PROPERTIES:
    :BEAMER_env: exampleblock
    :END:
     - suitable colorset!
