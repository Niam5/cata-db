-- Simmer Script update. Set evade and update event from 5% HP to 10% HP.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (2541606,2541607);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2541606,25416,2,0,100,0,10,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,'Simmer - Evade at 10% HP'),
(2541607,25416,0,0,100,0,0,0,0,0,33,25416,1,0,0,0,0,0,0,0,0,0,'Simmer - Kill credit Q.11627 at 10% HP (work around)');
UPDATE `creature_ai_scripts` SET `event_param1` = 10, `comment` = 'Simmer - Become Friendly and Say and Set Phase 1 at 10% HP' WHERE `id` = 2541602;
UPDATE `creature_ai_scripts` SET `comment` = 'Simmer - Say and Set Invincibility at 10% HP on Aggro' WHERE `id` = 2541601;

-- Churn Script update. Set evade and update event on 5% to 10%.
DELETE FROM `creature_ai_scripts` WHERE `id` IN (2541808,2541809);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2541808,25418,2,0,100,0,10,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,'Simmer -  Evade at 10% HP'),
(2541809,25418,0,0,100,0,0,0,0,0,33,25418,1,0,0,0,0,0,0,0,0,0,'Churn - Kill credit Q.11627 at 10% HP (work around)');
UPDATE `creature_ai_scripts` SET `event_param1` = 10, `comment` = 'Churn - Become Friendly and Say and Set Phase 1 at 10% HP' WHERE `id` = 2541803;
UPDATE `creature_ai_scripts` SET `comment` = 'Churn - Set Invincibility at 10% HP on Aggro' WHERE `id` = 2541801;