roots a b c =
  let sdisc = sqrt(b^2 - 4*a*b)
      twice_a = 2*a
  in ((-b + sdisc) / twice_a,
      (-b - sdisc) / twice_a)

-- SAME

wroots a b c = ((-b + sdisc) / twice_a, (-b - sdisc) / twice_a)
  where
    sdisc = sqrt(b^2 - 4*a*b)
    twice_a = 2*a