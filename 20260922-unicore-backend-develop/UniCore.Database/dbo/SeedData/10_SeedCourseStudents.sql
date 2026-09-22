PRINT 'Seeding Course Students...';

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std1-dbms')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std1-dbms', 'CST-00001', 'crs-dbms-002', 'slc-student1-se1701', '2026-09-01', '2026-12-31', 3, 8.80, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std1-dsa')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std1-dsa', 'CST-00002', 'crs-dsa-001', 'slc-student1-se1701', '2026-09-01', '2026-12-31', 4, 9.50, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std3-ds')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std3-ds', 'CST-00003', 'crs-ds-005', 'slc-student3-ds1801', '2026-09-01', '2026-12-31', 3, 8.80, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std4-ai')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std4-ai', 'CST-00004', 'crs-ai-004', 'slc-student4-ai1801', '2026-09-01', '2026-12-31', 4, 9.10, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std5-sec')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std5-sec', 'CST-00005', 'crs-sec-006', 'slc-student5-cy1801', '2026-09-01', '2026-12-31', 3, 8.30, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std6-ui')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std6-ui', 'CST-00006', 'crs-ui-007', 'slc-student6-gd1801', '2026-09-01', '2026-12-31', 3, 8.75, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std7-fin')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std7-fin', 'CST-00007', 'crs-fin-008', 'slc-student7-ba1701', '2026-09-01', '2026-12-31', 4, 9.00, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std2-web')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std2-web', 'CST-00008', 'crs-web-003', 'slc-student2-se1701', '2026-09-01', '2026-12-31', 3, 8.90, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std3-web')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std3-web', 'CST-00009', 'crs-web-003', 'slc-student3-ds1801', '2026-09-01', '2026-12-31', 3, 8.50, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std4-algo')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std4-algo', 'CST-00010', 'crs-algo-010', 'slc-student4-ai1801', '2026-09-01', '2026-12-31', 4, 9.25, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std5-fin')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std5-fin', 'CST-00011', 'crs-fin-008', 'slc-student5-fin1801', '2026-09-01', '2026-12-31', 3, 9.30, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std7-algo')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std7-algo', 'CST-00012', 'crs-algo-010', 'slc-student7-cs1701', '2026-09-01', '2026-12-31', 4, 9.40, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std8-bio')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std8-bio', 'CST-00013', 'crs-bio-015', 'slc-student8-bio1801', '2026-09-01', '2026-12-31', 3, 8.70, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std9-me')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std9-me', 'CST-00014', 'crs-me-016', 'slc-student9-me1801', '2026-09-01', '2026-12-31', 4, 9.15, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std10-ce')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std10-ce', 'CST-00015', 'crs-ce-017', 'slc-student10-ce1801', '2026-09-01', '2026-12-31', 3, 8.55, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std11-chem')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std11-chem', 'CST-00016', 'crs-chem-018', 'slc-student11-chem1801', '2026-09-01', '2026-12-31', 3, 9.05, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std12-arch')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std12-arch', 'CST-00017', 'crs-arch-019', 'slc-student12-arch1801', '2026-09-01', '2026-12-31', 4, 8.85, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std13-env')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std13-env', 'CST-00018', 'crs-env-020', 'slc-student13-env1801', '2026-09-01', '2026-12-31', 3, 8.90, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std14-psy')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std14-psy', 'CST-00019', 'crs-psy-021', 'slc-student14-psy1801', '2026-09-01', '2026-12-31', 3, 9.25, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std8-iot')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std8-iot', 'CST-00020', 'crs-iot-011', 'slc-student8-ee1801', '2026-09-01', '2026-12-31', 4, 8.65, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std9-eng')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std9-eng', 'CST-00021', 'crs-eng-012', 'slc-student9-eng1801', '2026-09-01', '2026-12-31', 3, 9.45, 'ENROLLED', 1, 0);
END;

IF NOT EXISTS (SELECT 1 FROM [dbo].[course_students] WHERE [id] = 'cst-std14-logistics')
BEGIN
    INSERT INTO [dbo].[course_students] ([id], [code], [course_id], [student_class_id], [start_date], [end_date], [weight], [final_score], [status], [is_active], [is_deleted])
    VALUES ('cst-std14-logistics', 'CST-00022', 'crs-logistics-024', 'slc-student14-logistics1801', '2026-09-01', '2026-12-31', 4, 8.95, 'ENROLLED', 1, 0);
END;

GO
