/* 1: Listar entre fechas */
select * from venta where fecha between '2023-07-01' and '2023-07-31';

/* 2. Seleccionar todos los empleados con sus respectivos cargos y municipios */

select e.nombre as NombreEmpleado, c.descripcion as Cargo, m.nombre as Municipio from empleado e join cargos c on e.IdCargoFk = c.Id join municipioFk = m.Id;

/* 3. Obtener la lista de todas las ventas con la información de los clientes y la forma de pago */

SELECT v.*, cl.nombre AS NombreCliente, fp.descripcion AS FormaPago
FROM venta v
INNER JOIN cliente cl ON v.IdClienteFk = cl.id
INNER JOIN forma_pago fp ON v.IdFormaPagoFk = fp.IdFormaPago;

/* 5. Listar los productos disponibles en el inventario junto con su talla y color */
select inv.CodInv.p.Nombre as NombrePrenda,t.descripcion as talla, col.Descripcion as Color from inventario inv join prenda p on inv.IdPrendaFk = p.Id join inventario_talla it on inv.Id = it.idInvFk join talla t on it.IdtallaFk = t.Id join detalle_orden do on p.Id = do.PrendaId join color col on do.IdColorFk = col.Id;
|