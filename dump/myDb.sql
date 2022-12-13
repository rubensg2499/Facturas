SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE Uso_CFDI(
  id VARCHAR(8) NOT NULL,
  uso VARCHAR(128) NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE Facturas(
  id INTEGER NOT NULL AUTO_INCREMENT,
  serie VARCHAR(16),
  fecha DATETIME NOT NULL,
  moneda VARCHAR(8) NOT NULL,
  subtotal DECIMAL(9,2) NOT NULL,
  total DECIMAL(9,2) NOT NULL,
  metodo_pago VARCHAR(8) NOT NULL,
  numero_certificado VARCHAR(264),
  folio VARCHAR(64),
  certificado TEXT,
  sello TEXT,
  uso VARCHAR(8), 
  create_at TIMESTAMP NOT NULL,
  last_update TIMESTAMP NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(uso) REFERENCES Uso_CFDI(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO Uso_CFDI (id, uso) VALUES
('D01', 'Honorarios médicos, dentales y gastos hospitalarios.'),
('D02', 'Gastos médicos por incapacidad o discapacidad.'),
('D03', 'Gastos funerales.'),
('D04', 'Donativos'),
('D05', 'Intereses reales efectivamente pagados por créditos hipotecarios (casa habitación).'),
('D06', 'Aportaciones voluntarias al SAR.'),
('D07', 'Primas por seguros de gastos médicos.'),
('D08', 'Gastos de transportación escolar obligatoria.'),
('D09', 'Depósitos en cuentas para el ahorro, primas que tengan como base planes de pensiones.'),
('D10', 'Pagos por servicios educativos (colegiaturas)'),
('S01', 'Sin efectos fiscales.'),
('CP01', 'Pagos.'),
('CN01', 'Nómina.')
;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
