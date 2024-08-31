#import "@preview/physica:0.9.3": *
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
Let us deduce basic formula!
