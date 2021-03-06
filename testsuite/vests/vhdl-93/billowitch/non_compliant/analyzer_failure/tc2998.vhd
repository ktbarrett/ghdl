
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc2998.vhd,v 1.2 2001-10-26 16:30:24 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

package c02s06b00x00p02n01i02998pkg is
  procedure PX (signal I1: in Bit; signal I2 : out Bit; signal I3 : inout Integer);
end c02s06b00x00p02n01i02998pkg;

package body c02s06b00x00p02n01i02998pkg is
  procedure PX (signal I1: in Bit; signal I2 : out Bit; signal I3 : inout Integer) is
  begin
    assert (I1 /= '1')
      report "No failure on test" ;
    assert (I3 /= 5)
      report "No failure on test" ;
  end PX;
  ;

  ENTITY c02s06b00x00p02n01i02998ent IS
  END c02s06b00x00p02n01i02998ent;

  ARCHITECTURE c02s06b00x00p02n01i02998arch OF c02s06b00x00p02n01i02998ent IS

  BEGIN
    TESTING: PROCESS
    BEGIN
      assert FALSE 
        report "***FAILED TEST: c02s06b00x00p02n01i02998 - Missing keyword end."
        severity ERROR;
      wait;
    END PROCESS TESTING;

  END c02s06b00x00p02n01i02998arch;
