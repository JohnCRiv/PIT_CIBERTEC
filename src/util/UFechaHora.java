package util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * The Class UDateUtil.
 *
 */
public class UFechaHora {

	/**
	 * Variable para tomar milisegundos del día
	 */
	private static final long MILLSECS_PER_DAY = 24 * 60 * 60 * 1000;

	private static final Log LOGGER = LogFactory.getLog(UFechaHora.class);

	/**
	 * regresa la cadena especificada en tipo Date, null si no es posible
	 *
	 * @param cadena
	 *            que representa el valor de la fecha este debete tener el mismo
	 *            formato que se especifica en el parametro formato ej.
	 *            "1980-06-01"
	 * @param formato
	 *            ej. "yyyy-mm-dd"
	 * @return Date valor de retorno retorna NULL si la cadena esta vacia
	 * @throws Exception
	 *             si ocurre un error al momento de realizar la creacion del
	 *             tipo Date
	 */
	public static Date convertirCadenaFecha(String cadena, String formato)
			throws Exception {

		Date date = null;

		if (cadena == null)
			return null;

		if (cadena.length() == 0)
			return null;

		SimpleDateFormat formateador = new SimpleDateFormat(formato);

		long ltime = formateador.parse(cadena).getTime();

		date = new Date(ltime);

		return date;
	}

	public static Calendar covertirDateToCalendar(Date date, String pattern) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar;
	}

	/**
	 * regresa la cadena especificada segun el formato enviado, si el formato es
	 * invalido se genera una excepcion
	 *
	 * @param date
	 *            ej. "1980-06-01"
	 * @param formato
	 *            ej. "yyyy-mm-dd"
	 * @return Date
	 * @throws Exception
	 *             genera una exepcion si no se peude transformar
	 */
	public static String convertirFechaCadena(Date date, String formato)
			throws Exception {

		String cadena = null;
		if (date == null)
			return null;
		if (!UValidador.estaVacio(date) && !UValidador.estaVacio(formato)) {
			SimpleDateFormat formateador = new SimpleDateFormat(formato);
			cadena = formateador.format(date);
		}
		// logger.debug("cadena " + cadena);
		return cadena;
	}

	public static String convertirFechaCadena(Date fecha) {
		String formato = null;
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		if (fecha != null) {
			formato = df.format(fecha);
		}
		return formato;
	}

	public static int obtenerNocionTiempo() {

		Calendar horaActual = Calendar.getInstance(TimeZone
				.getTimeZone("GMT-05"));

		int hora = horaActual.get(Calendar.HOUR_OF_DAY);
		int nocionTiempo = 0;

		if (hora <= 23)
			nocionTiempo = 2;

		if (hora <= 17)
			nocionTiempo = 1;

		if (hora <= 11)
			nocionTiempo = 0;

		return nocionTiempo;
	}

	public static long obtenerTime(Date date, String formato) throws Exception {

		long time = 0;

		SimpleDateFormat formateador = new SimpleDateFormat(formato);

		String cadena = convertirFechaCadena(date, formato);

		time = formateador.parse(cadena).getTime();

		return time;
	}

	/**
	 * regresa la cadena especificada en tipo Date, null si no es posible
	 *
	 * @param fecha
	 *            ej. "1980-06-01"
	 * @param formato
	 *            ej. "yyyy-mm-dd"
	 * @return int
	 */
	public static int extraerFecha(Date fecha, String formato) throws Exception {

		int formateado = 0;

		SimpleDateFormat formateador = new SimpleDateFormat(formato);

		try {

			formateado = Integer.parseInt(formateador.format(fecha));

		} catch (Exception e) {
			LOGGER.error(e);
		}

		return formateado;
	}

	/**
	 * regresa la cadena especificada en tipo Date, null si no es posible
	 *
	 * @param cadena
	 *            ej. "1980-06-01"
	 * @param formato
	 *            ej. "yyyy-mm-dd"
	 * @return Date
	 */
	public static boolean validarConvertirCadenaFecha(String cadena,
			String formato) throws Exception {

		Date date = null;

		SimpleDateFormat formateador = new SimpleDateFormat(formato);

		try {

			long ltime = formateador.parse(cadena).getTime();

			date = new Date(ltime);

		} catch (ParseException e) {
			return false;
		}

		return true;
	}

	public static boolean validarFechasIguales(Date fechaInicio, Date fechaFin) {
		boolean fechaIgual = false;
		int iniAnio, iniMes, iniDia;
		int finAnio, finMes, finDia;
		try {
			iniAnio = extraerFecha(fechaInicio, "yyyy");
			iniMes = extraerFecha(fechaInicio, "mm");
			iniDia = extraerFecha(fechaInicio, "dd");

			finAnio = extraerFecha(fechaFin, "yyyy");
			finMes = extraerFecha(fechaFin, "mm");
			finDia = extraerFecha(fechaFin, "dd");

			if ((iniAnio == finAnio) && (iniMes == finMes)
					&& (iniDia == finDia))
				fechaIgual = true;

		} catch (Exception e) {
			fechaIgual = false;
		}
		return fechaIgual;
	}

	/**
	 * regresa la cadena especificada en tipo Date, null si no es posible
	 *
	 * @param cadena
	 *            22/06/1986
	 *
	 * @return boolean
	 */
	public static boolean validarFecha(String cadena) {

		Pattern pat = null;
		Matcher mat = null;

		pat = Pattern
				.compile("^(0?[1-9]|[12][0-9]|3[01])\\/(0?[1-9]|1[012])\\/[0-9]{4}$");
		mat = pat.matcher(cadena);

		if (mat.find()) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean validarFecha(String fecha, String pattern)
			throws Exception {
		boolean flgExito = true;
		Date date = null;

		try {
			date = UFechaHora.convertirCadenaFecha(fecha, pattern);
		} catch (Exception e) {
			flgExito = false;
			return flgExito;
		}

		if (date == null)
			flgExito = false;

		return flgExito;
	}

	/**
	 * regresa la cadena especificada en tipo Date, null si no es posible
	 *
	 * @param cadena
	 *            22:06
	 *
	 * @return boolean
	 */
	public static boolean validarHora(String cadena) {

		Pattern pat = null;
		Matcher mat = null;

		pat = Pattern.compile("^(0\\d|1\\d|2[0-3]):([0-5]\\d)$");
		mat = pat.matcher(cadena);

		if (mat.find()) {
			return true;
		} else {
			return false;
		}
	}

	public static String obtenerDiaEnCadena(int dia) {

		switch (dia) {
		case 1:
			return "Domingo";
		case 2:
			return "Lunes";
		case 3:
			return "Martes";
		case 4:
			return "Miércoles";
		case 5:
			return "Jueves";
		case 6:
			return "Viernes";
		case 7:
			return "Sábado";
		default:
			return "";
		}
	}

	/**
	 * Agrega o quita dias a una fecha dada. Para quitar dias hay que sumarle
	 * valores negativos.
	 * 
	 * @param date
	 * @param days
	 * @return
	 */
	public static Date anadirDiasAFechas(Date date, int days) {
		return addMinutesToDate(date, 60 * 24 * days);
	}

	/**
	 * Agrega o quita minutos a una fecha dada. Para quitar minutos hay que
	 * sumarle valores negativos.
	 * 
	 * @param date
	 * @param minutes
	 * @return
	 */
	public static Date addMinutesToDate(Date date, int minutes) {
		Calendar calendarDate = Calendar.getInstance();
		calendarDate.setTime(date);
		calendarDate.add(Calendar.MINUTE, minutes);
		return calendarDate.getTime();
	}

	public static String obtenerMesEnCadena(int mes) {

		switch (mes) {
		case 0:
			return "Enero";
		case 1:
			return "Febrero";
		case 2:
			return "Marzo";
		case 3:
			return "Abril";
		case 4:
			return "Mayo";
		case 5:
			return "Junio";
		case 6:
			return "Julio";
		case 7:
			return "Agosto";
		case 8:
			return "Septiembre";
		case 9:
			return "Octubre";
		case 10:
			return "Noviembre";
		default:
			return "Diciembre";

		}
	}

	public static String fechaActualFormatoLargo() {
		String fechaActual;

		Calendar fec = Calendar.getInstance();

		fechaActual = obtenerDiaEnCadena(fec.get(Calendar.DAY_OF_WEEK)) + ", "
				+ fec.get(Calendar.DATE) + " de "
				+ obtenerMesEnCadena(fec.get(Calendar.MONTH)) + " del "
				+ fec.get(Calendar.YEAR);

		return fechaActual;
	}

	public static String formatearFecha(Date fecha, String pattern) {
		String fechaFormateada = null;
		if (fecha != null && pattern != null) {
			SimpleDateFormat df = new SimpleDateFormat(pattern);
			fechaFormateada = df.format(fecha);
		}
		return fechaFormateada;
	}

	/**
	 * regresa la cadena especificada en tipo Date, null si no es posible
	 *
	 * @param cadena
	 *            ej. "1980-06-01"
	 * @param formato
	 *            ej. "yyyy-mm-dd"
	 * @param tipoFecha
	 *            0 Ninguno 1 Fecha Inicial 2 Fecha Final
	 * @return Date
	 * @throws Exception
	 */
	public static Date convertirCadenaFecha(String cadena, String formato,
			int tipoFecha) throws Exception {
		Date _fecha;
		_fecha = convertirCadenaFecha(cadena, formato);

		if (tipoFecha == 1) {
			_fecha = obtenerFechaHoraInicioDia(_fecha);
		}
		if (tipoFecha == 2) {
			_fecha = obtenerFechaHoraFinDia(_fecha);
		}
		return _fecha;
	}

	public static Date obtenerFechaHoraActual() throws Exception {
		Date _fecha = new Date();
		_fecha = obtenerFechaHoraActual(_fecha);
		return _fecha;
	}

	public static Date obtenerFechaHoraActual(Date _fecha) throws Exception {
		if (_fecha == null)
			return null;
		_fecha.setHours(12);
		_fecha.setMinutes(0);
		_fecha.setSeconds(0);
		return _fecha;
	}

	public static Date obtenerFechaHoraInicioDia(Date _fecha) throws Exception {
		if (_fecha == null)
			return null;

		Calendar fecha = Calendar.getInstance();
		fecha.setTime(_fecha);

		fecha.set(Calendar.HOUR, 0);
		fecha.set(Calendar.MINUTE, 0);
		fecha.set(Calendar.SECOND, 0);

		_fecha = fecha.getTime();

		LOGGER.debug("hora : " + fecha.get(Calendar.HOUR));

		return _fecha;
	}

	public static Date obtenerFechaHoraFinDia(Date _fecha) throws Exception {
		if (_fecha == null)
			return null;

		Calendar fecha = Calendar.getInstance();
		fecha.setTime(_fecha);

		fecha.set(Calendar.HOUR_OF_DAY, 23);
		fecha.set(Calendar.MINUTE, 59);
		fecha.set(Calendar.SECOND, 59);

		_fecha = fecha.getTime();

		LOGGER.debug("hora : " + fecha.get(Calendar.HOUR));

		return _fecha;
	}

	/**
	 * 
	 * @param fechaInicio
	 * @param fechaFin
	 * @return cantidad de días
	 * @throws Exception
	 */
	public static Integer obtenerDiferenciaDias(Date fechaInicio, Date fechaFin)
			throws Exception {
		if (fechaInicio == null || fechaFin == null)
			return null;
		Integer diferencia;

		diferencia = (int) ((fechaFin.getTime() - fechaInicio.getTime()) / MILLSECS_PER_DAY);
		LOGGER.debug("diferencia == " + diferencia);

		return diferencia;
	}

	public static String validarRangoFechaDentroDeRango(Date fechaini,
			Date fechafin, Date fechaValidarInicio, Date fechaValidarFin)
			throws Exception {
		if (fechaini == null) {
			LOGGER.debug("validarRangoFechaDentroDeRango = generico_fecha_requeridoinicial");
			return "generico_fecha_requeridoinicial";
		}
		if (fechafin == null) {
			LOGGER.debug("validarRangoFechaDentroDeRango = generico_fecha_requeridofinal");
			return "generico_fecha_requeridofinal";
		}

		fechafin = obtenerFechaHoraFinDia(fechafin);

		if (fechaValidarInicio.before(fechaini)) {
			LOGGER.debug("validarRangoFechaDentroDeRango = generico_fecharango_validacionrango_fechainiciomenorfechainicio");
			return "generico_fecharango_validacionrango_fechainiciomenorfechainicio";
		}
		if (fechaValidarInicio.after(fechafin)) {
			LOGGER.debug("validarRangoFechaDentroDeRango = generico_fecharango_validacionrango_fechainiciomayorfechafin");
			return "generico_fecharango_validacionrango_fechainiciomayorfechafin";
		}
		if (fechaValidarFin.before(fechaini)) {
			LOGGER.debug("validarRangoFechaDentroDeRango = generico_fecharango_validacionrango_fechafinmenorfechainicio");
			return "generico_fecharango_validacionrango_fechafinmenorfechainicio";
		}
		if (fechaValidarFin.after(fechafin)) {
			LOGGER.debug("validarRangoFechaDentroDeRango = generico_fecharango_validacionrango_fechafinmayorfechafin");
			return "generico_fecharango_validacionrango_fechafinmayorfechafin";
		}

		return null;
	}

	public static String validarFechaDentroDeRango(Date fechaini,
			Date fechafin, Date fechaValidar) {
		if (fechaini == null) {
			LOGGER.debug("validarFechaDentroDeRango = generico_fecha_requeridoinicial");
			return "generico_fecha_requeridoinicial";
		}
		if (fechafin == null) {
			LOGGER.debug("validarFechaDentroDeRango = generico_fecha_requeridofinal");
			return "generico_fecha_requeridofinal";
		}
		if (fechaValidar.before(fechaini)) {
			LOGGER.debug("validarFechaDentroDeRango = generico_fecharango_validacion_fechamenorfechainicio");
			return "generico_fecharango_validacion_fechamenorfechainicio";
		}

		if (fechaValidar.after(fechafin)) {
			LOGGER.debug("validarFechaDentroDeRango = generico_fecharango_validacion_fechamayorfechafin");
			return "generico_fecharango_validacion_fechamayorfechafin";
		}
		return null;
	}

	public static String validarRangoFecha(Date fechaini, Date fechafin) {
		if (fechaini == null) {
			LOGGER.debug("validarRangoFecha = generico_fecha_requeridoinicial");
			return "generico_fecha_requeridoinicial";
		}
		if (fechafin == null) {
			LOGGER.debug("validarRangoFecha = generico_fecha_requeridofinal");
			return "generico_fecha_requeridofinal";
		}

		if (fechafin.before(fechaini)) {
			LOGGER.debug("validarRangoFecha = generico_fecharango_validacion_fechainiciomayorfinal");
			return "generico_fecharango_validacion_fechainiciomayorfinal";
		}
		return null;
	}

	public static Integer calcularEdad(String fecha) {
		Date fechaNac = null;
		try {

			fechaNac = new SimpleDateFormat("dd-MM-yyyy").parse(fecha);
		} catch (Exception ex) {
			LOGGER.error(ex);
		}
		Calendar fechaNacimiento = Calendar.getInstance();

		Calendar fechaActual = Calendar.getInstance();

		fechaNacimiento.setTime(fechaNac);

		int año = fechaActual.get(Calendar.YEAR)
				- fechaNacimiento.get(Calendar.YEAR);
		int mes = fechaActual.get(Calendar.MONTH)
				- fechaNacimiento.get(Calendar.MONTH);
		int dia = fechaActual.get(Calendar.DATE)
				- fechaNacimiento.get(Calendar.DATE);

		if (mes < 0 || (mes == 0 && dia < 0)) {
			año--;
		}

		return año;
	}

	public static Date obtenerPrimerDiaAnio() {

		Date fecha = new Date();

		GregorianCalendar cal = new GregorianCalendar();
		cal.set(cal.get(Calendar.YEAR), cal.getMinimum(Calendar.MONTH),
				cal.getMinimum(Calendar.DATE),
				cal.getMinimum(Calendar.HOUR_OF_DAY),
				cal.getMinimum(Calendar.MINUTE),
				cal.getMinimum(Calendar.SECOND));

		fecha = cal.getTime();

		return fecha;
	}

	public static Date obtenerUltimoDiaAnio() {

		Date fecha = new Date();

		Calendar cal = new GregorianCalendar();
		cal.set(cal.get(Calendar.YEAR), cal.getActualMaximum(Calendar.MONTH),
				cal.getMaximum(Calendar.DAY_OF_MONTH),
				cal.getMaximum(Calendar.HOUR_OF_DAY),
				cal.getMaximum(Calendar.MINUTE),
				cal.getMaximum(Calendar.SECOND));

		fecha = cal.getTime();

		return fecha;
	}

	public static Integer obtenerAnio() {

		Integer anio = null;

		Calendar cal = Calendar.getInstance();
		anio = cal.get(Calendar.YEAR);

		return anio;
	}

	public static Integer obtenerDiasTranscurridos(Date fechaMayor,
			Date fechaMenor) {
		GregorianCalendar fec1 = new GregorianCalendar();
		fec1.setTime(fechaMayor);

		GregorianCalendar fec2 = new GregorianCalendar();
		fec2.setTime(fechaMenor);

		Long difms = fec1.getTimeInMillis() - fec2.getTimeInMillis();
		Long difd = difms / (1000 * 60 * 60 * 24);
		return difd.intValue();

	}

	public static Date obtenerFechaMasdias(Date fecha, Integer dias) {

		LOGGER.debug("fecha inicio " + fecha);
		LOGGER.debug("dias " + dias);

		GregorianCalendar fec1 = new GregorianCalendar();
		fec1.setTime(fecha);

		fec1.add(Calendar.DATE, dias);

		LOGGER.debug("fecha fin " + fecha);

		return fec1.getTime();
	}

	public static Integer obtenerFechaParte(Date fecha, String part) {
		Integer parte = null;

		GregorianCalendar fec = new GregorianCalendar();
		fec.setTime(fecha);

		if (part.equals("YY")) {
			parte = fec.get(Calendar.YEAR);
		}

		if (part.equals("MM")) {
			parte = fec.get(Calendar.MONTH) + 1;
		}

		if (part.equals("DD")) {
			parte = fec.get(Calendar.DATE);
		}

		if (part.equals("HH")) {
			parte = fec.get(Calendar.HOUR_OF_DAY);
		}

		if (part.equals("MI")) {
			parte = fec.get(Calendar.MINUTE);
		}

		if (part.equals("SS")) {
			parte = fec.get(Calendar.SECOND);
		}

		LOGGER.debug("parte " + parte);

		return parte;
	}

	public static Date obtenerFechaCompuesta(Date fecha, Date hora) {

		Calendar fechabase = new GregorianCalendar();

		if (UValidador.esNulo(fecha) || UValidador.esNulo(hora)) {
			return null;
		}

		fechabase.setTime(fecha);

		Calendar horabase = new GregorianCalendar();
		if (UValidador.esNulo(hora)) {
			horabase.set(Calendar.HOUR_OF_DAY, 0);
			horabase.set(Calendar.MINUTE, 0);
			horabase.set(Calendar.SECOND, 0);
		} else {
			horabase.setTime(hora);
		}

		fechabase.set(GregorianCalendar.HOUR_OF_DAY,
				horabase.get(GregorianCalendar.HOUR_OF_DAY));
		fechabase.set(GregorianCalendar.MINUTE,
				horabase.get(GregorianCalendar.MINUTE));
		fechabase.set(GregorianCalendar.SECOND,
				horabase.get(GregorianCalendar.SECOND));

		return fechabase.getTime();
	}

	/**
	 * Obtiene el número de día de la semana.
	 *
	 * @param fecha
	 *            : fecha a procesar
	 * @return numero de dia de semana comenzando por domingo.
	 */
	public static Integer obtenerNumeroDiaSemana(Date fecha) {
		Calendar calendar = Calendar.getInstance();
		calendar.setFirstDayOfWeek(Calendar.SUNDAY);
		calendar.setTime(fecha);
		return calendar.get(Calendar.DAY_OF_WEEK);
	}

	public static Integer obtenerSegundosTranscurridos(Date fechaMayor,
			Date fechaMenor) {
		GregorianCalendar fec1 = new GregorianCalendar();
		fec1.setTime(fechaMayor);

		GregorianCalendar fec2 = new GregorianCalendar();
		fec2.setTime(fechaMenor);

		Long difms = fec1.getTimeInMillis() - fec2.getTimeInMillis();
		Long difd = difms / 1000;
		return difd.intValue();
	}

	public static Date obtenerFechaHoraInicioDiaDate(Date _fecha)
			throws Exception {
		if (_fecha == null)
			return null;

		_fecha.setHours(0);
		_fecha.setMinutes(0);
		_fecha.setSeconds(0);

		return _fecha;
	}

	/**
	 * 
	 * Funcion que retorna los años, meses y dias transcurridos entre dos fechas
	 * retornara asi 2 Años 11 meses 5 dias
	 * 
	 * @throws ParseException
	 */

	public static String obteneraniomesdias(Date fechainicial, Date fechaactual) {
		if (UValidador.esNulo(fechainicial))
			return null;

		if (UValidador.esNulo(fechaactual))
			return null;

		String fechaInicio = new SimpleDateFormat("dd/MM/yyyy")
				.format(fechainicial);
		String fechaActual = new SimpleDateFormat("dd/MM/yyyy")
				.format(fechaactual);

		Date date = new Date();
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		fechaActual = df.format(date);
		String[] aFechaIng = fechaInicio.split("/");
		Integer diaInicio = Integer.parseInt(aFechaIng[0]);
		Integer mesInicio = Integer.parseInt(aFechaIng[1]);
		Integer anioInicio = Integer.parseInt(aFechaIng[2]);

		String[] aFecha = fechaActual.split("/");
		Integer diaActual = Integer.parseInt(aFecha[0]);
		Integer mesActual = Integer.parseInt(aFecha[1]);
		Integer anioActual = Integer.parseInt(aFecha[2]);

		System.out.println(diaActual);
		System.out.println(mesActual);
		System.out.println(anioActual);
		int b = 0;
		Integer dias = 0;
		Integer mes = 0;
		Integer anios = 0;
		Integer meses = 0;
		mes = mesInicio - 1;
		if (mes == 2) {
			if ((anioActual % 4 == 0)
					&& ((anioActual % 100 != 0) || (anioActual % 400 == 0))) {
				b = 29;
			} else {
				b = 28;
			}
		} else if (mes <= 7) {
			if (mes == 0) {
				b = 31;
			} else if (mes % 2 == 0) {
				b = 30;
			} else {
				b = 31;
			}
		} else if (mes > 7) {
			if (mes % 2 == 0) {
				b = 31;
			} else {
				b = 30;
			}
		}
		if ((anioInicio > anioActual)
				|| (anioInicio == anioActual && mesInicio > mesActual)
				|| (anioInicio == anioActual && mesInicio == mesActual && diaInicio > diaActual)) {
			System.out
					.println("La fecha de inicio debe ser anterior a la fecha Actual");
		} else {
			if (mesInicio <= mesActual) {
				anios = anioActual - anioInicio;
				if (diaInicio <= diaActual) {
					meses = mesActual - mesInicio;
					// dias = b - (diaInicio - diaActual);
					dias = (diaInicio - diaActual);
				} else {
					if (mesActual == mesInicio) {
						anios = anios - 1;
					}
					meses = (mesActual - mesInicio - 1 + 12) % 12;
					// dias = b - (diaInicio - diaActual);
					dias = (diaInicio - diaActual);
				}
			} else {
				anios = anioActual - anioInicio - 1;
				System.out.println(anios);
				if (diaInicio > diaActual) {
					meses = mesActual - mesInicio - 1 + 12;
					// dias = b - (diaInicio - diaActual);
					dias = (diaInicio - diaActual);
				} else {
					meses = mesActual - mesInicio + 12;
					dias = diaActual - diaInicio;
				}
			}
		}

		System.out.println("Años: " + anios);
		System.out.println("Meses: " + meses);
		System.out.println("Días: " + dias);

		return anios.toString() + "  Años  " + Math.abs(meses) + "  Meses  "
				+ Math.abs(dias) + "  Días  ";

	}

	public Date fechaActual() {
		Calendar cal = Calendar.getInstance();
		return cal.getTime();
	}

	public static Date obtenerFechaActual(Date hora) {
		Calendar calendar = Calendar.getInstance();
		Calendar calReturn = null;
		GregorianCalendar calHora = new GregorianCalendar();
		calHora.setTime(hora);

		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH); // Jan = 0, dec = 11
		int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
		int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
		int weekOfYear = calendar.get(Calendar.WEEK_OF_YEAR);
		int weekOfMonth = calendar.get(Calendar.WEEK_OF_MONTH);

		int hour = calendar.get(Calendar.HOUR); // 12 hour clock
		int hourOfDay = calendar.get(Calendar.HOUR_OF_DAY); // 24 hour clock
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);
		int millisecond = calendar.get(Calendar.MILLISECOND);

		hourOfDay = calHora.get(Calendar.HOUR_OF_DAY);
		minute = calHora.get(Calendar.MINUTE);
		second = calHora.get(Calendar.SECOND);

		calReturn = new GregorianCalendar(year, month, dayOfMonth, hourOfDay,
				minute, second);

		return calReturn.getTime();
	}

	/**
	 * Obtener un periodo en base a uno existente y la cantidad de meses
	 * siguientes o anteriores. Si el mes es negativo traerá un periodo anterior
	 * según los meses, si es positivo traerá un periodo posterior según los
	 * meses.
	 * 
	 * @author valenzuelad
	 * 
	 * @param periodo
	 *            Periodo base, para calcular el periodo siguiente.
	 * @param mes
	 *            Mes positivo o negativo, para calcular el periodo siguiente.
	 * @return {@link String} Periodo Calculado
	 * @see UFechaHora.calcularperiodoRango
	 * @tablas no presenta
	 * @powerbuilder no presenta
	 * @pre_condiciones no presenta
	 * @post_condicion no presenta
	 * @usado_por <ul>
	 *            <li><strong>Módulo:</strong>&nbsp Logística, Tesorería
	 *            (AsPeriodoServicio)</li>
	 *            <li><strong>Función:</strong>&nbsp calcularperiodoRango()</li>
	 *            </ul>
	 * @comentario Nombre anterior del método: FCalculateNextPeriod
	 */
	public static String calcularPeriodo(String periodo, Integer meses) {
		LOGGER.debug("test de sycomm.f_calculate_next_period");

		Integer w_year, w_month, w_inicio;
		w_year = Integer.parseInt(periodo.substring(0, 4));
		w_month = Integer.parseInt(periodo.substring(4, 6));
		w_month = w_month + meses;

		if (w_month > 12) {
			w_year = w_year + (w_month / 12);
			w_month = w_month % 12;
		}

		if (UValidador.esCero(w_month)) {
			w_year = w_year - 1;
			w_month = 12;
		}

		if (w_month < 1) {
			w_month = Integer.parseInt(periodo.substring(4, 6));
			if (Math.abs(meses) < w_month) {
				w_month = w_month + meses;
			} else {
				if (Math.abs(meses) == 12) {
					w_month = Integer.parseInt(periodo.substring(4, 6));
					w_year = w_year - 1;
				} else {
					w_inicio = 13;
					if (w_month > 1) {
						w_inicio = w_inicio + (w_month - 1);
					}
					w_month = w_inicio - Math.abs(meses);
					w_year = w_year - 1;
				}
			}
		}

		String mes = String.format("%02d", w_month);

		return w_year.toString() + mes;

	}

	/**
	 * Listar el Primer y último día del Periodo, Soporta los periodos
	 * correspondientes a meses bisiestos.
	 * 
	 * @author valenzuelad
	 * 
	 * @param periodo
	 *            Periodo base, para obtener la primera y última fecha.
	 * @return List<{@link Date}> Primera y última fecha del Periodo.
	 * @see UFechaHora.calcularPeriodo
	 * @tablas no presenta
	 * @powerbuilder no presenta
	 * @pre_condiciones no presenta
	 * @post_condicion no presenta
	 * @usado_por <ul>
	 *            <li><strong>Módulo:</strong>&nbsp Logística, Tesorería
	 *            (AsPeriodoServicio)</li>
	 *            <li><strong>Función:</strong>&nbsp L=iniciarControladora(),
	 *            T=abrir(),ejecutarBotonCompletar()</li>
	 *            </ul>
	 * @comentario no presenta
	 */
	public static List<Date> calcularperiodoRango(String periodo)
			throws ParseException {
		LOGGER.debug("test de sycommon.f_calculate_period_first_and_last_day");
		List<Date> resultado = new ArrayList<Date>();

		String w_next;
		Date par_first_day, par_last_day;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");

		w_next = calcularPeriodo(periodo, 1);

		String stringFecha1 = periodo.substring(0, 4) + "/"
				+ periodo.substring(4, 6) + "/" + "01";
		par_first_day = sdf.parse(stringFecha1);

		String stringFecha2 = w_next.substring(0, 4) + "/"
				+ w_next.substring(4, 6) + "/" + "01";
		par_last_day = sdf.parse(stringFecha2);

		par_last_day = UFechaHora.anadirDiasAFechas(par_last_day, -1);

		resultado.add(par_first_day);
		resultado.add(par_last_day);

		return resultado;

	}
}