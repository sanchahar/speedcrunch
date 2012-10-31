# speedcrunch

SET(speedcrunch_RESOURCES
resources/speedcrunch.qrc
)

set(speedcrunch_FORMS
)

set(speedcrunch_HEADERS
#variant/variantbase.h
#variant/variant.h
#variant/real.h
#thirdparty/binreloc/binreloc.h
core/constants.h
core/evaluator.h
core/functions.h
#core/settings.h
gui/aboutbox.h
gui/application.h
gui/autohidelabel.h
gui/bookdock.h
gui/constantsdock.h
gui/constantswidget.h
gui/deletevardlg.h
gui/resultdisplay.h
gui/editor.h
gui/functionsdialog.h
gui/functionsdock.h
gui/functionswidget.h
gui/historydock.h
gui/historywidget.h
gui/insertvardlg.h
gui/keypad.h
#gui/syntaxhighlighter.h
#gui/textedit.h
gui/tipwidget.h
gui/variablesdock.h
gui/variableswidget.h
gui/mainwindow.h
#math/floatcommon.h
#math/floatconfig.h
#math/floatconst.h
#math/floatconvert.h
#math/floaterf.h
#math/floatexp.h
#math/floatgamma.h
#math/floathmath.h
#math/floatio.h
#math/floatipower.h
#math/floatlog.h
#math/floatlogic.h
#math/floatlong.h
#math/floatnum.h
#math/floatpower.h
#math/floatseries.h
#math/floattrig.h
#math/hmath.h
#math/number.h
)

set(speedcrunch_SOURCES
#variant/variantbase.cpp
#variant/variant.cpp
#variant/real.cpp
#variant/vstring.cpp
#variant/initvariant.cpp
#variant/formatbase.cpp
#variant/formatreal.cpp
thirdparty/binreloc.c
core/constants.cpp
core/evaluator.cpp
core/functions.cpp
core/settings.cpp
gui/aboutbox.cpp
gui/application.cpp
gui/autohidelabel.cpp
gui/bookdock.cpp
gui/constantsdock.cpp
gui/constantswidget.cpp
gui/deletevardlg.cpp
gui/resultdisplay.cpp
gui/editor.cpp
gui/functionsdialog.cpp
gui/functionsdock.cpp
gui/functionswidget.cpp
gui/historydock.cpp
gui/historywidget.cpp
gui/insertvardlg.cpp
gui/keypad.cpp
gui/syntaxhighlighter.cpp
gui/textedit.cpp
gui/tipwidget.cpp
gui/variablesdock.cpp
gui/variableswidget.cpp
gui/mainwindow.cpp
main/main.cpp
math/floatcommon.c
math/floatconst.c
math/floatconvert.c
math/floaterf.c
math/floatexp.c
math/floatgamma.c
math/floathmath.c
#math/floatincgamma.c
math/floatio.c
math/floatipower.c
math/floatlog.c
math/floatlogic.c
math/floatlong.c
math/floatnum.c
math/floatpower.c
math/floatseries.c
math/floattrig.c
math/hmath.cpp
math/number.c
)

# regression test for HMath
set(testhmath_SOURCES
math/floatcommon.c
math/floatconst.c
math/floatconvert.c
math/floaterf.c
math/floatexp.c
math/floathmath.c
math/floatgamma.c
#math/floatincgamma.c
math/floatio.c
math/floatipower.c
math/floatlog.c
math/floatlogic.c
math/floatlong.c
math/floatnum.c
math/floatpower.c
math/floatseries.c
math/floattrig.c
math/hmath.cpp
math/number.c
test/testhmath.cpp
)

# regression test for Evaluator
set(testevaluator_HEADERS
core/evaluator.h
core/functions.h
)

set(testevaluator_SOURCES
core/evaluator.cpp
core/functions.cpp
core/settings.cpp
math/floatcommon.c
math/floatconst.c
math/floatconvert.c
math/floaterf.c
math/floatexp.c
math/floathmath.c
math/floatgamma.c
#math/floatincgamma.c
math/floatio.c
math/floatipower.c
math/floatlog.c
math/floatlogic.c
math/floatlong.c
math/floatnum.c
math/floatpower.c
math/floatseries.c
math/floattrig.c
math/hmath.cpp
math/number.c
test/testevaluator.cpp
)

# regression test for floatnum
set(testfloatnum_SOURCES
math/floatcommon.c
math/floatconst.c
math/floatconvert.c
math/floaterf.c
math/floatexp.c
math/floathmath.c
math/floatgamma.c
math/floatio.c
math/floatipower.c
math/floatlog.c
math/floatlogic.c
math/floatlong.c
math/floatnum.c
math/floatpower.c
math/floatseries.c
math/floattrig.c
math/number.c
test/testfloatnum.c
)

