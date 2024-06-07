class Empleado {
  String cedula;
  double sueldoBase;
  double pagoPorHoraExtra;
  int horasExtra;
  bool casado;
  int numeroDeHijos;

  Empleado({
    required this.cedula,
    required this.sueldoBase,
    required this.pagoPorHoraExtra,
    required this.horasExtra,
    required this.casado,
    required this.numeroDeHijos,
  });

  // Cálculo de horas extra
  double calcularPagoHorasExtra() {
    return pagoPorHoraExtra * horasExtra;
  }

  // Cálculo del sueldo bruto
  double calcularSueldoBruto() {
    return sueldoBase + calcularPagoHorasExtra();
  }

  // Cálculo de las retenciones
  double calcularRetenciones(double porcentajeBase) {
    double porcentajeRetencion = porcentajeBase;
    if (casado) {
      porcentajeRetencion -= 2;
    }
    porcentajeRetencion -= numeroDeHijos;
    if (porcentajeRetencion < 0) {
      porcentajeRetencion = 0;
    }
    return (calcularSueldoBruto() * porcentajeRetencion) / 100;
  }

  // Visualización de la información básica del empleado
  void mostrarInformacionBasica() {
    print('Cedula: $cedula');
    print('Casado: ${casado ? "Sí" : "No"}');
    print('Número de hijos: $numeroDeHijos');
  }

  // Visualización de toda la información del empleado
  void mostrarInformacionCompleta(double porcentajeBase) {
    double pagoHorasExtra = calcularPagoHorasExtra();
    double sueldoBruto = calcularSueldoBruto();
    double retencion = calcularRetenciones(porcentajeBase);
    double sueldoNeto = sueldoBruto - retencion;

    mostrarInformacionBasica();
    print('Sueldo base: \$${sueldoBase.toString()}');
    print('Pago por horas extra: \$${pagoHorasExtra.toString()}');
    print('Sueldo bruto: \$${sueldoBruto.toString()}');
    print('Retención: \$${retencion.toString()}');
    print('Sueldo neto: \$${sueldoNeto.toString()}');
  }
}

void main() {
  // Ejemplo de uso
  Empleado empleado = Empleado(
    cedula: '12345678',
    sueldoBase: 1000.0,
    pagoPorHoraExtra: 15.0,
    horasExtra: 10,
    casado: true,
    numeroDeHijos: 2,
  );

  print('--- Información básica del empleado ---');
  empleado.mostrarInformacionBasica();

  print('\n--- Información completa del empleado ---');
  empleado.mostrarInformacionCompleta(15.0);  // Asumiendo un porcentaje base del 15%
}
