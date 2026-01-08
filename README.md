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


