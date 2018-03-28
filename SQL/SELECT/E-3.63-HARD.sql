
SELECT DISTINCT Sno
FROM SC SCX
WHERE NOT EXISTS
                     (SELECT *
                      FROM SC SCY
                      WHERE SCY.Sno = '201215122'  AND
                                    NOT EXISTS
                                    (SELECT *
                                     FROM SC SCZ
                                     WHERE SCZ.Sno=SCX.Sno AND
                                                   SCZ.Cno=SCY.Cno));
