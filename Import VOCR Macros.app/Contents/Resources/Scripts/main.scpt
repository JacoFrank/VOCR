JsOsaDAS1.001.00bplist00�Vscript_=vo = Application("VoiceOver")
vo.output("Please wait...")
app = Application.currentApplication()
app.includeStandardAdditions = true
vocr = app.pathTo(this, {as:"string"})+"Contents:Resources:VOCR.kmmacros"
km = Application("Keyboard Maestro")km.launch()km.setmacroenable("Clipboards", {enable:false})
km.setmacroenable("Switcher Group", {enable:false})km.deletemacrogroup("VOCR")km.importmacros(vocr)
delay(2)km.quit()delay(1)Application("Keyboard Maestro Engine").quit()delay(1)Application("Keyboard Maestro Engine").launch()
cmd = "afplay '/System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/system/burn complete.aif'"
app.doShellScript(cmd)
app.displayAlert("Installation is successfully completed. Please remember to rename the macro 'OCR Front Window 27' to match your screen size.")                              S jscr  ��ޭ