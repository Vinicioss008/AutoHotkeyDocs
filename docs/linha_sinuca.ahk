#AlwaysOnTop
#NoTrayIcon

largura := 3
altura := A_ScreenHeight

Gui, +ToolWindow -Caption +LastFound
Gui, Color, Red
Gui, Show, x%A_ScreenWidth//2% y0 w%largura% h%altura%

OnMessage(0x201, "Drag")
Return

Drag() {
    PostMessage, 0xA1, 2,,, A
}

Esc::ExitApp
