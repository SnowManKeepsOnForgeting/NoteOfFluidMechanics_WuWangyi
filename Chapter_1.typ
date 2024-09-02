#import "@preview/physica:0.9.3": *
#import "@preview/i-figured:0.2.4"
#set heading(numbering: "1.1")

#show math.equation: i-figured.show-equation


= Field Theory
== Definition
First,let us define scalar field $phi$ as $phi = phi(bold(r),t)=phi(x,y,z,t)$ and vector field $bold(a)$ as $bold(a) = bold(a)(bold(r),t) = bold(a)(x,y,z,t)$.

Then $op("grad") phi $ of scalar $phi$ would be 
$
op("grad") phi = pdv(phi,x)bold(i) + pdv(phi,y)bold(j) + pdv(phi,z)bold(k)
$

Given a vector field $bold(a)$,choose any point in the field and wrap it in volume $V$.We define divergence of the field as:
$
op("div")bold(a) = lim_(V->0) (integral.cont_S bold(a) dot dd(bold(S)))/V 
$

By Остроградский-Gauss formula,We can deduce:
$
op("div") bold(a) = pdv(a_x,x) + pdv(a_y,y) + pdv(a_z,z)
$

We define projection along a direction $bold(n)$ of curl of the vector field as:
$
op("rot")_n bold(a) = lim_(S->0)(integral.cont_L bold(a) dot dd(bold(r)))/S
$ 
where we choose any point in the field and choose a infinitly small closed curve $L$ on the curved surfuce $S$ and direction of normal line of the curved surfuce is as same as $bold(n)$. 

By Stoke formula,we can de deduce:
$
op("rot") bold(a) = mat(delim: "|",
  bold(i),bold(j),bold(k);
  pdv(,x),pdv(,y),pdv(,z);
  a_x,a_y,a_z
  )
$

We define Hamiltonian as:
$
nabla = bold(i)pdv(,x) + bold(j)pdv(,y) + bold(k)pdv(,z)
$
and read it as nabla.

We define Laplace Operator as:
$
laplace = pdv(,x,2) + pdv(,y,2) + pdv(,z,2)
$

== Basic formula
#counter(math.equation).update(0)
Let us deduce basic formula!

(1) Derivation formula
#block(
  fill: luma(230),
  inset: 8pt, 
  radius: 4pt
)[
$
"grad"(phi + psi) = "grad"phi + "grad"psi
$
*Proof*:It is as same as derivation.
]

#block(
  fill: luma(230),
  inset: 8pt, 
  radius: 4pt
)[
$
"grad"(phi psi) = psi"grad"phi + phi"grad"psi
$
*Proof*:It is as same as derivation.
]

#block(
  fill: luma(230),
  inset: 8pt, 
  radius: 4pt
)[
$
"grad"F(phi) = F'(phi)"grad"phi
$
*Proof*:It is as same as derivation.
]

#block(
  fill: luma(230),
  inset: 8pt, 
  radius: 4pt
)[
$
"div"bold((a+b)) = "div"bold(a) + "div"bold(b)
$
*Proof*:It is as same as derivation.
]

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
)[
$
"div"(phi bold(a)) = phi"div"bold(a) + bold(a)dot"grad"phi
$
*Proof*:
$
"div"(phi bold(a)) = pdv(phi a_x,x) + pdv(phi a_y,y) + pdv(phi a_y,y) = phi"div"bold(a) + bold(a)dot "grad"phi
$<->
]




#block(
  fill: luma(230),
  inset: 8pt, 
  radius: 4pt
)[
$
"div"(bold(a) times bold(b)) = bold(b)dot "rot"bold(a) - bold(a)dot "rot"bold(b)
$
*Proof*:
$
"div"(bold(a) times bold(b)) &= "div"((a_y b_z - b_y a_z) bold(i) + (a_z b_x - a_x b_z)bold(j) + (b_y a_x - a_y b_x)bold(k))\
&= (a_y pdv(b_z,x) + b_z pdv(a_y,x) - b_y pdv(a_z,x) - a_z pdv(b_y,x))\
&+ (a_z pdv(b_x,y) + b_x pdv(a_z,y) - a_x pdv(b_z,y) - b_z pdv(a_x,y))\
&+ (b_y pdv(a_x,z) + a_x pdv(b_y,z) - a_y pdv(b_x,z) - b_x pdv(a_y,z))\
&= bold(b) dot "rot"bold(a) - bold(a) dot "rot"bold(b)
$<->
]


#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "rot"(bold(a)+bold(b)) = "rot"bold(a) + "rot"bold(b)
  $
  *Proof*:It is eazy to prove.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "rot"(phi bold(a)) = phi"rot"bold(a) + "grad"phi times"rot"bold(a)
  $
  *Proof*:Expand it and prove it.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "rot"(bold(a) times bold(b)) = (bold(b) dot nabla)bold(a) -(bold(a) dot nabla)bold(b) + bold(a)"div"bold(b) - bold(b)"div"bold(a)
  $
  *Proof*:
  $
  "rot"(bold(a) times bold(b)) = mat(delim: "|", 
  bold(i),bold(j),bold(k);
  pdv(,x),pdv(,y),pdv(,z);
  a_y b_z - b_y a_z,a_z b_x - a_x b_z,b_y a_x - a_y b_x
  )
  $<->
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "grad"(bold(a) dot bold(b)) = (bold(b)dot nabla)bold(a) + (bold(a) dot nabla)bold(b) + bold(b)times "rot"bold(a) + bold(a) times "rot"bold(b)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "grad"((a^2)/2) = (bold(a) dot nabla)bold(a) + bold(a) times "rot"bold(a)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "div" "grad"phi = laplace phi
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "div" "rot"bold(a) = 0
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "rot" "grad"phi = 0
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "rot" "rot"bold(a) = "grad" "div"bold(a) - laplace bold(a)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  "div"(phi "grad"psi) = phi laplace psi + "grad"phi dot "grad"psi
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  laplace(phi psi) = psi laplace phi + phi laplace psi + 2"grad"phi dot "grad"psi
  $
  *Proof*:I have not prove yet.
]

(2) Integral formula
#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  integral_V"grad"phi dd(V) = integral_S bold(n)phi dd(S)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[Остроградский-Gauss formula
  $
  integral_V "div"bold(a)dd(V) = integral_S bold(n)dot bold(a)dd(S)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  integral_V "rot"bold(a)dd(V) = integral_S bold(n)times bold(a)dd(S)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  integral_V (bold(v)dot nabla)bold(a)dd(V) = integral_S (bold(v) dot bold(n) )bold(a) dd(S)
  $
  $bold(v)$ is a constant vector.

  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  integral_V laplace phi dd(V) = integral_S pdv(phi,n)dd(S) = integral_S bold(n)dot nabla phi dd(S)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  integral_V laplace bold(a) dd(V) = integral_S pdv(bold(a),n)dd(S) = integral_S (bold(n)dot nabla) bold(a) dd(S)
  $
  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  First Green formula
  $
  integral_V (phi laplace psi + "grad"phi dot "grad"psi)dd(V) = integral_S phi pdv(psi,n)dd(S)
  $
  and $V$ is a simply connected domain.

  *Proof*:I have not prove yet.
]

#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  Second Green formula.
  $
  integral_V (phi laplace psi - psi laplace phi) dd(V) = integral_S (phi pdv(psi,n) - psi pdv(phi,n))dd(S)
  $
  and $V$ is a simply connected domain.

  *Proof*:I have not prove yet.
]


#block(
  fill: luma(230), 
  inset: 8pt,
  radius: 4pt
)[
  $
  integral_V ("grad"phi)^2 dd(V) = integral_S phi pdv(phi,n)dd(S)
  $
  and $laplace phi = 0$,$V$ is a simply connected domain.

  *Proof*:I have not prove yet.
]
