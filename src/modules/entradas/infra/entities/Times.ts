class Times {
  id: string;
  codigoUsuario: string;
  horarioEntrada: Date;
  constructor(id: string, codigoUsuario: string, horarioEntrada: Date) {
    this.id = id;
    this.codigoUsuario = codigoUsuario;
    this.horarioEntrada = horarioEntrada;
  }
}

export default Times;
