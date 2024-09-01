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
op("div") bold(a) = pdv(bold(a),x) + pdv(bold(a),y) + pdv(bold(a),z)
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

== Basic formula
#counter(math.equation).update(0)
Let us deduce basic formula!
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
]