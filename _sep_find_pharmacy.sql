USE [DBFAO_CRECER]
GO
/****** Object:  StoredProcedure [dbo].[SP_SEP_FindPharmacy]    Script Date: 05/15/2018 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =========================================
-- Creado por: Ing. Talia Gómez
-- Fecha:		07/03/2016
-- Descripcion: Mostrar Farmacias
-- Modificaciones:
--   21/07/2016 Claudia A. Rangel E. (CARE)
--     Se coloco en código duro las 89 Farmacias que 
--     estan activas a la Fecha.
-- 30092016 Claudia A. Rangel E. (CARE)
-- Se agrego la farmacia 01047 	 
-- =========================================

ALTER PROCEDURE [dbo].[SP_SEP_FindPharmacy]
    @RegionId NUMERIC ,
    @AreaID NUMERIC,
    @PharmacyID VARCHAR(5),
    @PharmacyName VARCHAR(50)
AS 
    BEGIN

        IF @RegionId = 0 
            BEGIN
                SET @RegionId = NULL
            END
            
        IF @AreaID = 0 
            BEGIN
                SET @AreaID = NULL
            END
            
        IF @PharmacyID = '0' 
            SET @PharmacyID = NULL
		ELSE	
			SET @PharmacyID = RIGHT('00000' + @PharmacyID,5)
        
        IF @PharmacyName = '0' 
            BEGIN
                SET @PharmacyName = NULL
            END        
	
        SELECT  BF.ID_Crecer_ORBO ,
                BF.Name
        FROM    dbo.VW_BasePharmacy BF
                INNER JOIN DBFAO.dbo.Pharmacy F ON BF.PharmacyID = F.ID
                -- CARE 21/07/2016 Se coloco Farmacias Activas a la fecha
                -- CARE 10-11-2016 Se agrego el ID_Crecer_ORBO '01118' correspondiente a la nueva Farmacia Puerto Cabello
                AND  BF.ID_Crecer_ORBO IN
                     ('01002', '01003', '01004', '01005', '01006', '01007', '01008', '01009', '01010', '01011', '01012', '01013', '01014', '01015', 
			  		  '01018', '01020', '01022', '01023', '01025', '01026', '01027', '01029', '01030', '01031', '01032', '01034', '01035', '01036', '01037', 
					  '01038', '01040', '01041', '01042', '01043', '01046', '01048', '01049', '01050', '01052', '01053', '01058', '01059', '01060', '01061', 
					  '01062', '01063', '01064', '01065', '01067', '01068', '01069', '01071', '01072', '01073', '01075', '01076', '01077', '01078', '01079', 
					  '01080', '01083', '01084', '01085', '01088', '01089', '01090', '01091', '01092', '01093', '01094', '01095', '01096', '01097', '01098', 
					  '01099', '01101', '01102', '01103', '01104', '01105', '01106', '01107', '01108', '01109', '01113', '01114', '01115', '01116', '01117',
					  '01047') 
        WHERE   ( @RegionId IS NULL
                  OR F.RegionID = @RegionId
                )
                AND ( @AreaID IS NULL
                      OR F.AreaID = @AreaID
                    )
                    AND ( @PharmacyID IS NULL
                      OR BF.ID_Crecer_ORBO = @PharmacyID
                    )
                    AND ( @PharmacyName IS NULL
                      OR BF.Name LIKE '%'+@PharmacyName+'%'
                    )
        ORDER BY Name
	
    END
	
	

