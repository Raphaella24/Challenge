//Author Oxynger
package kata

  func Past(h, m, s int) int {
    milliseconds := s
    milliseconds += m * 60
    milliseconds += h * 3600
    milliseconds *= 1000

    return milliseconds

  }
