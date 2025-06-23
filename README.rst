..
   WARNING

   This README is used to display on the Github repository page, so it cannot
   contain any Sphinx stuffs (directive or role).

======================
Shengyu Zhang's Resume
======================

Browse
======

:HTML (Chinese): https://silverrainz.me/resume
:HTML (English): TODO
:PDF (Chinese): `shengyu_zhang_zh.pdf`__
:PDF (English): `shengyu_zhang_en.pdf`__

__ https://github.com/SilverRainZ/resume/blob/pdf/shengyu_zhang_zh.pdf
__ https://github.com/SilverRainZ/resume/blob/pdf/shengyu_zhang_en.pdf

Dependencies
============

You MUST have following programs installed:

- Python>=3.12
- Sphinx>=8
- TeXLive

Install python package dependencies by the following commmands::

   pip3 install --user -r requirements.txt

Build
=====

Firstly clone this repository::

   $ git clone https://github.com/SilverRainZ/resume.git

Ask sphinx to build resumes::

   $ make zh
   $ make en

Root page of the HTML documentation can be found at ``_build/html/index.html``.
PDF documentation can be found at ``_build/latex/sphinx.pdf``.

LICENSE
=======

Copyright 2025, Shengyu Zhang.

The contents of this repository/documentation are all published under
|cc-badge| Attribution-ShareAlike (CC BY-SA) agreement. For more details,
please refer to: LICENSE_.

.. |cc-badge| image:: https://licensebuttons.net/l/by-sa/4.0/88x31.png
   :target: http://creativecommons.org/licenses/by-sa/4.0/
   :height: 1.5em
.. _LICENSE: /LICENSE
