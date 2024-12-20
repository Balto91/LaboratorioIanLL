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
-- Created on Tue Nov 05 18:34:21 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DiragramaI2C IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        SDA : IN STD_LOGIC := '0';
        fin_dir : IN STD_LOGIC := '0';
        soy : IN STD_LOGIC := '0';
        fin_dato : IN STD_LOGIC := '0';
        Hab_Dir : OUT STD_LOGIC;
        Hab_Dat : OUT STD_LOGIC;
        A_C_K : OUT STD_LOGIC
    );
END DiragramaI2C;

ARCHITECTURE BEHAVIOR OF DiragramaI2C IS
    TYPE type_fstate IS (Idle,Start,GuadaDir,RW,ACK,GuardaDato);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,SDA,fin_dir,soy,fin_dato)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= Idle;
            Hab_Dir <= '0';
            Hab_Dat <= '0';
            A_C_K <= '0';
        ELSE
            Hab_Dir <= '0';
            Hab_Dat <= '0';
            A_C_K <= '0';
            CASE fstate IS
                WHEN Idle =>
                    IF ((SDA = '0')) THEN
                        reg_fstate <= Start;
                    ELSIF ((SDA = '1')) THEN
                        reg_fstate <= Idle;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= Idle;
                    END IF;

                    A_C_K <= '0';

                    Hab_Dir <= '0';

                    Hab_Dat <= '0';
                WHEN Start =>
                    reg_fstate <= GuadaDir;

                    A_C_K <= '0';

                    Hab_Dir <= '0';

                    Hab_Dat <= '0';
                WHEN GuadaDir =>
                    IF ((fin_dir = '0')) THEN
                        reg_fstate <= GuadaDir;
                    ELSIF (((fin_dir = '1') AND (soy = '0'))) THEN
                        reg_fstate <= Idle;
                    ELSIF (((fin_dir = '1') AND (soy = '1'))) THEN
                        reg_fstate <= RW;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= GuadaDir;
                    END IF;

                    A_C_K <= '0';

                    Hab_Dir <= '1';

                    Hab_Dat <= '0';
                WHEN RW =>
                    reg_fstate <= ACK;

                    A_C_K <= '0';

                    Hab_Dir <= '0';

                    Hab_Dat <= '0';
                WHEN ACK =>
                    reg_fstate <= GuardaDato;

                    A_C_K <= '1';

                    Hab_Dir <= '0';

                    Hab_Dat <= '0';
                WHEN GuardaDato =>
                    IF ((fin_dato = '0')) THEN
                        reg_fstate <= GuardaDato;
                    ELSIF ((fin_dato = '1')) THEN
                        reg_fstate <= Idle;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= GuardaDato;
                    END IF;

                    A_C_K <= '0';

                    Hab_Dir <= '0';

                    Hab_Dat <= '1';
                WHEN OTHERS => 
                    Hab_Dir <= 'X';
                    Hab_Dat <= 'X';
                    A_C_K <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
