const CANVAS_WIDTH = 1600;
const CANVAS_HEIGHT = 900;

/**
 * Валидация координат и размеров объекта в пределах холста
 */
function validateObjectBounds(data, type) {
  return [];
}

/**
 * Нормализация данных объекта (приведение к границам холста)
 */
function normalizeObjectBounds(data, type) {
  const normalized = { ...data };

  switch (type) {
    case "text":
    case "rectangle":
    case "image":
      if (normalized.x !== undefined) {
        normalized.x = Math.max(0, Math.min(normalized.x, CANVAS_WIDTH));
      }
      if (normalized.y !== undefined) {
        normalized.y = Math.max(0, Math.min(normalized.y, CANVAS_HEIGHT));
      }
      if (normalized.width !== undefined && normalized.x !== undefined) {
        normalized.width = Math.min(
          normalized.width,
          CANVAS_WIDTH - normalized.x,
        );
      }
      if (normalized.height !== undefined && normalized.y !== undefined) {
        normalized.height = Math.min(
          normalized.height,
          CANVAS_HEIGHT - normalized.y,
        );
      }
      break;

    case "circle":
      if (normalized.x !== undefined) {
        normalized.x = Math.max(0, Math.min(normalized.x, CANVAS_WIDTH));
      }
      if (normalized.y !== undefined) {
        normalized.y = Math.max(0, Math.min(normalized.y, CANVAS_HEIGHT));
      }
      if (normalized.radius !== undefined) {
        const maxRadiusX =
          normalized.x !== undefined
            ? Math.min(normalized.x, CANVAS_WIDTH - normalized.x)
            : CANVAS_WIDTH / 2;
        const maxRadiusY =
          normalized.y !== undefined
            ? Math.min(normalized.y, CANVAS_HEIGHT - normalized.y)
            : CANVAS_HEIGHT / 2;
        normalized.radius = Math.min(normalized.radius, maxRadiusX, maxRadiusY);
      }
      break;

    case "line":
      if (normalized.x1 !== undefined) {
        normalized.x1 = Math.max(0, Math.min(normalized.x1, CANVAS_WIDTH));
      }
      if (normalized.y1 !== undefined) {
        normalized.y1 = Math.max(0, Math.min(normalized.y1, CANVAS_HEIGHT));
      }
      if (normalized.x2 !== undefined) {
        normalized.x2 = Math.max(0, Math.min(normalized.x2, CANVAS_WIDTH));
      }
      if (normalized.y2 !== undefined) {
        normalized.y2 = Math.max(0, Math.min(normalized.y2, CANVAS_HEIGHT));
      }
      break;
  }

  return normalized;
}

module.exports = {
  validateObjectBounds,
  normalizeObjectBounds,
  CANVAS_WIDTH,
  CANVAS_HEIGHT,
};
