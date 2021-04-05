---------------------------------------------------------------------------
--                Raspberry Pi HD44780 interface
-- 
--           Copyright (C) 2021 By Ulrik Hørlyk Hjort
--
--  This Program is Free Software; You Can Redistribute It and/or
--  Modify It Under The Terms of The GNU General Public License
--  As Published By The Free Software Foundation; Either Version 2
--  of The License, or (at Your Option) Any Later Version.
--
--  This Program is Distributed in The Hope That It Will Be Useful,
--  But WITHOUT ANY WARRANTY; Without Even The Implied Warranty of
--  MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See The
--  GNU General Public License for More Details.
--
-- You Should Have Received A Copy of The GNU General Public License
-- Along with This Program; if not, See <Http://Www.Gnu.Org/Licenses/>.
---------------------------------------------------------------------------
with HD44780;

procedure Main is
   S : constant String := "Hello Ada Pi   World! :)";   
   
begin      
   -- Examples of usage of the interface:
   HD44780.Init(HD44780.Bits_8_Lines_2_Dots_5x7);
   HD44780.Set_Cursor_Position(1, 5);
   HD44780.Shift_Cursor_Right(6);   
   HD44780.Home;   
   HD44780.Clear;         
   HD44780.Set_Cursor_Mode(HD44780.BLINK);      
   HD44780.Print_String(S);   
end Main;
