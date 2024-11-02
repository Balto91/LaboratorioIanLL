-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Sat Nov 02 13:32:59 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Tirasled IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        l1 : OUT STD_LOGIC;
        l2 : OUT STD_LOGIC;
        l3 : OUT STD_LOGIC;
        l4 : OUT STD_LOGIC
    );
END Tirasled;

ARCHITECTURE BEHAVIOR OF Tirasled IS
    TYPE type_fstate IS (state2,state3,state4,state5,state6,state7,state1);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            l1 <= '0';
            l2 <= '0';
            l3 <= '0';
            l4 <= '0';
        ELSE
            l1 <= '0';
            l2 <= '0';
            l3 <= '0';
            l4 <= '0';
            CASE fstate IS
                WHEN state2 =>
                    reg_fstate <= state3;

                    l2 <= '1';

                    l1 <= '0';

                    l3 <= '1';

                    l4 <= '0';
                WHEN state3 =>
                    IF ((x = '1')) THEN
                        reg_fstate <= state7;
                    ELSIF ((x = '0')) THEN
                        reg_fstate <= state4;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    l2 <= '1';

                    l1 <= '1';

                    l3 <= '1';

                    l4 <= '1';
                WHEN state4 =>
                    reg_fstate <= state1;

                    l2 <= '0';

                    l1 <= '1';

                    l3 <= '0';

                    l4 <= '1';
                WHEN state5 =>
                    reg_fstate <= state6;

                    l2 <= '0';

                    l1 <= '1';

                    l3 <= '0';

                    l4 <= '0';
                WHEN state6 =>
                    reg_fstate <= state3;

                    l2 <= '1';

                    l1 <= '1';

                    l3 <= '0';

                    l4 <= '0';
                WHEN state7 =>
                    reg_fstate <= state1;

                    l2 <= '1';

                    l1 <= '1';

                    l3 <= '1';

                    l4 <= '0';
                WHEN state1 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    l2 <= '0';

                    l1 <= '0';

                    l3 <= '0';

                    l4 <= '0';
                WHEN OTHERS => 
                    l1 <= 'X';
                    l2 <= 'X';
                    l3 <= 'X';
                    l4 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
