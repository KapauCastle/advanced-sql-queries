# Advanced SQL Queries
**Progreso SQL Día 3 al 11: NetflixDB + 3 ejercicios RRHH avanzados.**

## 📋 Contenido del Proyecto

### 1. **NetflixDB** (Día 3 → Día 11)
**9 archivos completos** de análisis de series Netflix: ratings, géneros, episodios, JOINs complejos.
- **Tablas**: `Series`, `Episodios`, `Actuaciones`
- **Archivos**: `solucion_proyecto_del_dia_3.sql` hasta `solucion_proyecto_del_dia_11.sql`[1][2]

### 2. **EmpresaEmpleados** (3 Ejercicios Entrevista)
**3 ejercicios técnicos** de RRHH/proyectos para entrevistas:
```
ejercicio_entrevista_1.sql → empleado-proyecto JOINs
ejercicio_entrevista_2.sql → horas por departamento  
ejercicio_entrevista_3.sql → RANK() ranking empleados
```
- **Tablas**: `Empleados`, `Departamentos`, `Proyectos`, `AsignacionesDeProyectos`[3][4][5]

## 🚀 Ejemplos Destacados

**Netflix (Día 4)**:
```sql
SELECT genero, COUNT(*) AS cantidad_series 
FROM Series GROUP BY genero ORDER BY cantidad_series DESC;
```

**RRHH Ranking (Entrevista 3)**:
```sql
SELECT E.nombre, SUM(AP.horas_asignadas) AS total_horas,
       RANK() OVER (PARTITION BY E.depto_id ORDER BY SUM(AP.horas_asignadas) DESC)
FROM Empleados E JOIN AsignacionesDeProyectos AP ON E.empleado_id = AP.empleado_id
GROUP BY E.empleado_id;
```

## 📊 Progreso Día 3 → Día 11
```
✅ DIA 3-6: Netflix basics → advanced analytics
✅ DIA 9-11: Procedimientos, vistas, CTEs
✅ 3 ENTREVISTAS: Window functions, complex JOINs
```

## 💾 Setup Rápido
```
1. DDL + INSERTs en conversación anterior
2. Ejecuta archivos por día: 3→11 + entrevistas
```

**SQL Mastery: Día 3 → Día 11 + Interview Ready**  
**Mexico City | Enero 2026**[1][6][4][5][3]

[1](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/596d9e19-fc7e-4a98-9374-730303584423/solucion_proyecto_del_dia_4.sql)
[2](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/84ff26e6-008a-41f4-8798-cf8ba3ca7206/solucion_proyecto_del_dia_3.sql)
[3](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/fa352adb-2372-4bd2-9b94-6ef7160c7082/ejercicio_entrevista_2.sql)
[4](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/976f06af-f281-495c-8d47-8ed59dee32b0/ejercicio_entrevista_3.sql)
[5](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/1c65893e-b1c9-4c62-a834-848eb65fe857/ejercicio_entrevista_1.sql)
[6](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/55a0c2a1-870f-4dbe-90cb-ba1ade41f414/solucion_proyecto_del_dia_9.sql)
[7](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/1f7995e8-1f30-4ce5-9b78-8e2515c83135/solucion_proyecto_del_dia_11.sql)
[8](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/d5f71d55-57d3-46d3-9876-7cf2a705342a/solucion_proyecto_del_dia_10.sql)
[9](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/84946fb7-fc19-4fbf-9202-f0ddbd14a774/solucion_proyecto_del_dia_6.sql)
[10](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/152837629/5ee11049-e27f-49e4-8047-3fadfd561653/solucion_proyecto_del_dia_5.sql)
[11](https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/attachments/images/152837629/c9437744-ce5b-40e0-9835-c14a1a22cfcf/image.jpg)
