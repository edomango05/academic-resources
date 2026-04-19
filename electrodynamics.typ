#import "@preview/physica:0.9.8": *
#import "@preview/rubber-article:0.5.1": *

#show: article.with(
  fig-caption-width: 70%,
  header-display: true,
  header-title: "Electromagnetism",
  lang: "en",
  page-margins: 44.45mm,
  page-numbering: "1",
  page-paper: "us-letter",
)

#maketitle(
  title: "Electromagnetism & Continuum Electrodynamics",
  authors: ("Edoardo Othman",),
  date: "March 2026",
)

#let ex-counter = counter("exercise")
#show heading.where(level: 1): it => {
  ex-counter.update(0)
  it
}

#let e_0 = $epsilon_0$
#let Dm(field) = $(D #field)/(D t)$
#pagebreak()
#pagebreak()
#outline()
#pagebreak()
#pagebreak()

= Electrostatics

The study of electrostatic phenomena begins with an analysis of the microscopic structure of matter and the mobility of electric charges within it. Every object is composed of atoms containing charged particles, yet under ordinary conditions, matter exists in a state of electrical neutrality where positive and negative charges perfectly balance each other. When this state of equilibrium is disturbed, typical electrostatic phenomena such as electrification by friction, contact, or induction manifest themselves. The behavior of different materials in the presence of an external electric field allows us to classify them into distinct categories based on the freedom of movement of their electrons. In conductors, typically metals, some electrons are only weakly bound to their nuclei and can move freely through the crystalline lattice, allowing the charge to redistribute itself rapidly across the surface of the body. Conversely, in insulators or dielectrics, electrons are firmly bound to their parent atoms and cannot flow freely, resulting instead in the phenomenon of polarization where charges shift only slightly at the molecular level to create dipoles. There is also an intermediate category represented by semiconductors, whose conductive properties vary significantly based on temperature or the presence of impurities within the material. This fundamental distinction between the ability to transmit charge or to confine it determines how different materials interact with electric forces and defines the basis for the study of all subsequent electrostatic phenomena. In the context of electrostatics, the term statics refers to the study of electric charges at rest. This leads to a unique set of physical conditions known as electrostatic equilibrium, where the net movement of charge within a material has ceased. When a conductor is placed in an electric field or is given a net charge, the free electrons inside respond almost instantaneously to the internal forces. Because like charges repel one another, these mobile electrons move as far apart as possible, which results in all excess charge residing exclusively on the outer surface of the material. Within the interior of a conductor in this state, the electric field is exactly zero because the surface charges rearrange themselves until they perfectly cancel out any external influence.

== Coloumb's Force
The concept of electric charge serves as the fundamental property of matter that dictates how particles interact through electromagnetic fields. At the subatomic level, charge is not a fluid or a continuous substance but a quantized attribute, meaning it exists only in discrete multiples of the elementary charge found on an electron or a proton. While the mass of a proton is significantly greater than that of an electron, their charges are exactly equal in magnitude but opposite in sign, a symmetry that allows for the formation of stable, electrically neutral atoms. In any closed system, the net electric charge remains constant over time, a principle known as the conservation of charge. This means that while charges can be transferred from one object to another or even created and annihilated in high-energy particle interactions, the algebraic sum of positive and negative charges never changes. When dealing with macroscopic bodies, we treat charge as a continuous distribution rather than discrete points. We define the following densities:
$
  rho = lim_(v->0) Q/v quad sigma = lim_(A->0) Q/A quad lambda = lim_(l->0) Q/l
$
The total charge is found respectively:
$
  Q = integral_Omega rho dif v quad Q = integral_Sigma sigma dif A quad Q = integral_gamma lambda dif l
$
To describe the interaction between stationary electrically charged particles, we utilize the concept of the Coulomb force, which represents one of the fundamental pillars of electrostatics. This force describes how two point charges exert a mutual influence on one another across the void of space, acting along the straight line that joins their centers. The magnitude of this interaction is governed by two primary factors: the quantity of the electric charge and the physical separation between them. Specifically, the force is directly proportional to the product of the magnitudes of the two charges and inversely proportional to the square of the distance between them. This inverse square relationship implies that as the distance between two charged objects doubles, the resulting force between them drops to one-fourth of its original strength.
$
  bold(F)_12 = 1/(4 pi #e_0) (Q_1Q_2)/r^2 bold(e)_12
$
In a physical sense, the nature of the force, whether it is attractive or repulsive, is determined entirely by the signs of the charges involved. Like charges, such as two positive protons or two negative electrons, will push away from each other, while opposite charges will pull toward one another. To account for both the magnitude and the specific spatial direction of this interaction, we express it through a vectorial equation. This equation defines the force vector exerted by one charge on another as the product of the Coulomb constant and the two charge values, divided by the square of the distance, and finally multiplied by a unit vector that points from the source charge toward the test charge. By including this unit vector, the mathematical expression captures not only how strong the push or pull is, but also the exact line of action in three-dimensional space, satisfying the requirements of Newton's third law where the forces are equal in magnitude but opposite in direction.

== Electric field

The concept of the electric field represents a fundamental shift in how we understand physical interactions, moving away from the idea of "action at a distance" toward the concept of a field-based reality. Instead of imagining two charges reaching out across a vacuum to tug on one another, we conceive of every charged object as being the source of an invisible alteration in the space surrounding it. This alteration is what we call the electric field. We define it primarily to simplify our analysis of complex systems: once we know the electric field produced by a distribution of source charges, we can immediately determine the force that would be exerted on any new "test charge" placed at any point in that space, without needing to recalculate the individual interactions between every pair of particles. Physically, the electric field is a vector field, meaning that at every single point in space, it possesses both a specific magnitude and a specific direction. We define the electric field at a point as the electrostatic force that a stationary unit positive test charge would experience if placed at that location. This definition ensures that the field is a property of the source charges alone and does not depend on the magnitude of the test charge used to measure it. Because it is defined as force per unit charge, its direction is always the same as the direction of the force that would act on a positive charge; thus, field lines point away from positive sources and toward negative ones. The electric field $bold(E)$ is defined as the force $bold(F)$ per unit test charge $Q_0$:
$
  bold(E) = bold(F) / Q_0
$
For a point charge $Q$ located at the origin, the electric field at a position vector $bold(r)$ is:
$
  bold(E) = 1 / (4 pi epsilon_0) Q / r^2 bold(e)_r
$
Where $bold(e)_r$ is the unit vector pointing from the charge to the point in space. To visualize the invisible influence of the electric field in space, we use the concept of electric field lines. These are directed curves that provide a geometric representation of both the magnitude and the direction of the electric field at any point in a given region. The concept was originally introduced by Michael Faraday to provide a physical "feel" for the forces acting in a vacuum, treating the field as a continuous map rather than a series of disconnected vector arrows. By convention, the tangent to a field line at any point gives the direction of the electric field vector at that location. Several fundamental properties define the behavior and geometry of these lines, which are rooted in the physical laws of electrostatics:
- *Origin and Termination*: Field lines always originate on positive charges (or at infinity) and terminate on negative charges (or at infinity). This reflects the fact that positive charges act as sources of the field, while negative charges act as sinks.
- *Density and Magnitude*: The relative closeness of the lines is proportional to the strength of the electric field. In regions where the lines are packed tightly together, the field is intense; where they are widely spaced, the field is weak.
- *Non-Intersection*: Two field lines can never cross each other. If they did, the electric field at the point of intersection would have two different directions simultaneously, which is physically impossible as the net force on a test charge must be unique.
- *Perpendicularity to Conductors*: As established in the study of electrostatic equilibrium, field lines must always meet the surface of a conductor at a right angle. Any tangential component would cause the surface charges to move, which contradicts the static state.
- *Number of Lines*: The number of lines leaving a positive charge or entering a negative charge is proportional to the magnitude of that charge. This allows for a consistent visual comparison between different charged bodies in a single diagram.
When we move from the study of a single point charge to a system of multiple charges, we must account for the collective influence of all source charges on a specific point in space. This transition relies on the Principle of Superposition, which states that the total electric field at any point is the vector sum of the fields created by each individual charge independently.
In a system containing $n$ point charges $Q_1, Q_2, ..., Q_n$, the total electric field $bold(E)$ at a point in space is the vector sum of the fields produced by each charge individually.
$
  bold(E)(bold(r)) = sum_i 1 / (4 pi #e_0) Q_i / (|bold(r) - bold(r)_i|^2) bold(e)_(r i)
$
Once the total electric field is known, the force $bold(F)$ exerted on a new test charge $Q_0$ placed at that position is simply:
$ bold(F)(bold(r)) = Q_0 bold(E)(bold(r)) $
When charges are distributed continuously over a body, we replace the discrete sum with a Riemann integral. We consider an infinitesimal contribution for the whole electric field defines as follows:
$
  bold(ε)(bold(r)) = lim_(Q->0) bold(E)/Q = lim_(v->0) (bold(E)(rho, bold(r)))/(rho(bold(r))v)
$
To find the total field, we integrate over the entire source distribution:
$
  bold(E)(bold(r)) = integral_Omega bold(ε)(bold(r)) rho(bold(r)) dif v =1 / (4 pi epsilon_0) integral_Omega rho(bold(r)) / r^2 bold(e)_r dif v
$
Using the integral definition of the electric field, we can derive the expressions for various symmetric charge distributions. For an infinite line with constant linear charge density $lambda$, the electric field at a distance $r$ from the line is directed radially outward. Due to infinite length, the longitudinal components of the field cancel out. To find the field at a point $P$ at distance $r$ from an infinite line with density $lambda$, we align the line with the $z$-axis
$
  bold(E)(bold(r))= 1/(4 pi epsilon_0) integral_gamma lambda/(r_R^2 + (r_z-z)^2) (bold(r) - bold(x))/sqrt(r_R^2 + z^2) dif l = lambda/(4 pi epsilon_0) integral_(-infinity)^(+infinity) (bold(r) - bold(x))/(r_R^2 + z^2)^(3/2) dif z =\
  = lambda/(4 pi epsilon_0) integral_(-infinity)^(+infinity) (r_R bold(e)_R + r_z bold(e)_z - z bold(e)_z)/(r_R^2 + (r_z-z)^2)^(3/2) dif z = lambda/(4 pi epsilon_0) integral_(-infinity)^(+infinity) (r_R bold(e)_R + u bold(e)_z)/(r_R^2 + u^2)^(3/2) dif u=\
  = lambda/(4 pi epsilon_0) integral_(-infinity)^(+infinity) (r_R bold(e)_R + u bold(e)_z)/(r_R^2 + u^2)^(3/2) dif u = (lambda r_R bold(e)_R)/(4 pi epsilon_0) integral_(-infinity)^(+infinity) (r_R cosh t)/(r_R^3 cosh^3 t) dif t = \
  =(lambda bold(e)_R)/(2 pi epsilon_0 r_R)integral_0^(+infinity) 1/(cosh^2 t) dif t = (lambda bold(e)_R)/(2 pi epsilon_0 r_R) evaluated(tanh t)^(+infinity)_0 = (lambda bold(e)_R)/(2 pi epsilon_0 r_R)
$

We consider a ring of radius $R$ in the $x y$-plane with total charge $Q$. The linear density is $lambda = Q / (2 pi R)$. We evaluate the field at a point $bold(r) = z bold(e)_z$ on the central axis.

$
  bold(E)(z) = 1 / (4 pi epsilon_0) integral_0^(2 pi) (lambda R (z bold(e)_z - R bold(e)_R))/(R^2 + z^2)^(3/2) dif theta.alt = (lambda R z bold(e)_z) / (4 pi epsilon_0 (R^2 + z^2)^(3/2)) integral_0^(2 pi) d theta.alt = (2 pi R lambda z bold(e)_z) / (4 pi epsilon_0 (R^2 + z^2)^(3/2))
$
Substituting $Q = 2 pi R lambda$:
$ bold(E)(z) = 1 / (4 pi epsilon_0) (Q z) / (R^2 + z^2)^(3/2) bold(e)_z $

== Gauss Theorem
Imagine a bubble around some objects that have an electric charge. Gauss's Law is a rule that says if you want to know how much electric field is pushing out through the surface of that bubble, you only need to count the total amount of charge trapped inside it. The size or the specific shape of the bubble doesn't actually change the final result. Whether the bubble is a tiny sphere or a giant jagged box, the total "push" or flow of the electric field through the walls of the container remains exactly the same as long as the charge inside stays the same. Gauss's Theorem (or Gauss's Law) is one of the four Maxwell equations and serves as a powerful alternative to Coulomb's Law. It relates the electric flux passing through a closed surface to the net charge enclosed within that surface.
The strategy is to prove it for a single point charge by isolating the singularity (the point where the charge sits) inside a tiny ball, and then using the Divergence Theorem for the rest of the space. Since we cannot apply the Divergence Theorem directly to a volume containing the origin (because the field blows up there), we "cut out" the singularity. Let $Omega$ to be a volume in $RR^3$ in which there is a charge. Consider the ball $B_delta$ surrounding the singularity. The flux of the charge's field $bold(E)$ over $partial Omega$ is defined as follows:
$
  Phi(bold(E), partial Omega) = integral.cont_(partial Omega) bold(E) dot bold(n) dd(S)
$
Now let $W = Omega without B_delta$. It is clear that $partial W = partial Omega union partial B_delta$, therefore $partial Omega = partial W without partial B_delta$. Then the flux is:
$
  Phi(bold(E), partial Omega) = integral.cont_(partial W) bold(E) dot bold(n) dd(bold(S)) - integral.cont_(partial B_delta) bold(E) dot bold(n) dd(S) =\
  = integral.cont_W div bold(E) dif v - integral.cont_(partial B_delta) bold(E) dot bold(n) dd(S)
$
The divergence of $bold(E)$ is equal to 0 everywhere except in the singurality. therefore
$
  Phi(bold(E), partial Omega) = - integral.cont_(partial B_delta) bold(E) dot bold(n) dd(S) = -1/(4 pi epsilon_0) integral.cont_(partial B_delta) Q/r^2 bold(e)_r dot bold(n) dd(S) = Q/(4 pi epsilon_0 r^2) integral.cont_(partial B_delta) dd(S)=\
  =Q/(4 pi epsilon_0 r^2) 4 pi r^2= Q/epsilon_0
$

The local relationship of Gauss's Law is the differential form, which shifts the focus from a large volume to a single point in space. It tells us that the electric field doesn't just exist; it is "generated" by the local presence of charge. the analitical expression due to
$
  integral.cont_(partial Omega) bold(E) dot bold(n) dd(S) = 1/#e_0 integral_Omega rho dif v
$
is for the divergence theorem
$
  div bold(E) = rho/#e_0
$
The local relationship of Gauss's Law tells us that the electric field is born from charge. At any single point in space, the divergence of the field measures how much the field is spreading out or converging. If you find a point where the divergence is positive, it means there is a source of field lines there, which is a positive charge. If the divergence is negative, field lines are sinking into that point, meaning a negative charge is present. If there is no charge at a point, the divergence is zero, which means the field lines simply pass through that spot without being created or destroyed. It turns out that the strength of this "spreading out" at a point is exactly proportional to how much charge is squeezed into that tiny volume. When we look at a surface, we distinguish between internal and external charges based on their net contribution to the total flow or flux. Internal charges are the only ones that determine the final balance of the flux. Every field line they create must cross the boundary to get to the outside world, so they leave a permanent "count" on the total.
External charges behave differently. Even though an external charge might be extremely powerful and push a lot of field through your surface, its net contribution is always zero. This is because any field line coming from the outside that enters the surface must eventually exit from the other side. The "entry" is counted as negative and the "exit" is counted as positive, so they always cancel each other out perfectly. While the external charge might change the direction or strength of the field at a specific spot on the surface, it cannot change the total sum of the flow through the entire enclosure.
Gemini ha detto

Gauss's Theorem is a mathematical shortcut that allows us to bypass the complicated integrals we solved earlier, such as those involving hyperbolic or trigonometric substitutions. While the law is always true for any object, it is only practically useful for calculating the electric field when the object possesses high geometric symmetry. In these specific cases, the "total flow" through a surface can be simplified into a basic multiplication of the field strength times the area. The trick lies in choosing an imaginary boundary, called a Gaussian surface, that mimics the shape of the charged object. You want to pick a shape where the electric field is constant in strength everywhere on that surface and points directly through it. When you have this perfect alignment, the math changes from a complex calculus problem into simple arithmetic. Instead of summing up every tiny contribution from every piece of the object, you simply say that the field multiplied by the area of your chosen shape must equal the charge inside divided by a constant. For a spherical object, you would draw an imaginary sphere around it. Because of the symmetry, the field must be the same at every point on that sphere, so you just multiply the field by the surface area of a sphere. For a long wire, you would use a cylinder, and for a flat sheet, you would use a box. If you tried to use this for a lumpy or irregular object, the field would be stronger in some spots and weaker in others, and it would hit the surface at strange angles. In those messy cases, the theorem is still true, but it doesn't help you find the field because you can no longer pull the field value out of the integral as a constant.

== Conservation of energy
To understand the electric field energetically, we have to look at how much work it takes to move a charge through it. The electric field is a conservative field, meaning the energy of the system depends only on where you start and where you end, not on the path you take to get there. In an energetic sense, a conservative field is one where the total work done on a charge moving in a closed loop is exactly zero. If you move a test charge around and return it to its original position, you haven't "spent" or "gained" any net energy; the field gave back exactly what you put in. This allows us to define "Potential," because the energy at any point is a fixed value relative to a reference, regardless of how the charge arrived at that point. A vector field is conservative if its curl is zero everywhere. We can prove this using the point-charge field (and by extension, any distribution via superposition). We calculate the curl of this field in spherical coordinates:
$
  curl bold(E) = 1/(r^2sin theta) det mat(
    bold(e)_r, r bold(e)_theta, r sin theta bold(e)_phi;
    pdv(, r), pdv(, theta), pdv(, phi);
    E_r, 0, 0
  ) = bold(0)
$
Alternatively, by the Fundamental Theorem of Line Integrals, if the field can be written as the negative gradient of a scalar function ($bold(E)=-grad V$), it is mathematically guaranteed to be conservative. The electrostatic field E is a conservative field. This means that the work done by the field on a charge moving between two points depends only on the starting and ending positions, not on the path taken. If you move a charge q around a loop and return to the exact same starting point, the total work done by the electric field is zero. Mathematically, the line integral of the electric field around any closed curve $gamma$ is:
$
  integral.cont_gamma bold(E) dot dd(bold(l)) = 0
$

Because the field is conservative, we can define these two energetic quantities:
Electric Potential Energy ($U$): This is the energy a charge Q possesses due to its position in an external electric field. It is defined as the negative of the work done by the field to move the charge from a reference point (usually infinity) to its current position:
$
  U(bold(r)) = -integral_(+infinity)^r bold(F) dot dd(bold(l)) = -integral_(+infinity)^r Q bold(E) dot dd(bold(l)) = -Q V(bold(r))
$
Mathematically, the electric field is the negative gradient of the potential. In plain English, the field points in the direction where the potential drops the fastest.
$
  bold(E)=−grad V
$
The "Negative" Sign: This is crucial. It tells us that electric field lines always point from high potential to low potential. Just as gravity pulls objects from high elevation to low elevation, the electric field "pushes" positive charges toward lower potential. The Magnitude: The steeper the change in potential over a certain distance, the stronger the electric field in that region. An equipotential surface is a collection of points in space that all share the exact same voltage (potential). If you move a charge along an equipotential surface, the electric field does zero work on it. Because the potential doesn't change ($Delta V=0$), the energy doesn't change. This is the most important geometric rule: Electric field lines are always perpendicular to equipotential surfaces. If the field weren't perpendicular, there would be a component of the force acting along the surface. That force would do work, which would mean the potential is changing contradicting the definition of an equipotential surface.

In physics, electric energy can be viewed in two complementary ways: as the energy required to assemble a collection of charges, or as energy that is literally stored in the electric field itself. The electric potential energy U of a system is the total work done by an *external* agent to bring all the charges from infinity to their specific positions. For a discrete set of charges, this is:
$
  U(bold(r)) = 1/2 sum_i Q_i sum_(j!=i) V_j (bold(r))
$
Where 1/2 represents the fact that we don't want to repeat the potential energy for the same particle. The total energy $U$ stored in a system can be expressed in terms of the electric field $bold(E)$ integrated over all space:
$
  U(bold(r)) = 1/2 integral_(RR^3) rho(bold(r)) V(bold(r)) dif v = #e_0/2 integral_(RR^3) (div bold(E)) V dif v
$
moreover the relationship could be expressed using the product rule for divergence:
$
  V partial_i E_i = partial_i (V E_i) - (partial_i V) E_i\
  (div bold(E)) V = div (bold(E) V) - grad V dot bold(E)
$
Substituting this back into the integral:
$
  U(bold(r)) = #e_0/2 [integral_(RR^3) div (bold(E) V) dif v - integral_(RR^3) grad V dot bold(E) dif v] = #e_0/2 [integral_(partial RR^3) V bold(E) dot bold(n) dd(S) + integral_(RR^3) |bold(E)|^2 dif v]
$
We now let the volume $RR^3$ expand to encompass all space. As the surface $partial RR^3$ moves toward infinity:
$
  lim_(bold(r)->+infinity) V bold(E) = bold(0)
$
then we are left only with the second integral
$
  U(bold(r)) = 1/2 #e_0 integral_(RR^3) |bold(E)|^2 dif v
$
We define the electric energy density $u_e$ as:
$
  U(bold(r)) = integral_Omega u_e dif v
$
so that we now can express a local relation between energy density and the electric field strength.
$
  u_e = 1/2 #e_0|bold(E)|^2
$
== Multiple poles
An electric dipole is fundamentally a pair of "almost" canceled charges. When you look at a positive and a negative charge from very far away, they seem to be in the same spot, which would suggest they should cancel out to zero. However, because they are separated by a tiny distance, the cancellation is imperfect. This "imperfect cancellation" is what creates the dipole field. To describe this, we use the dipole moment. Think of this as a vector that measures the "strength" of the separation. It depends on two things: how much charge you have and how far apart they are. Even if the distance is microscopic, if the charge is large, the dipole effect remains significant. By convention, this vector points from the negative side to the positive side. When we talk about the "approximation," we are describing how the system looks from a distance. If you are standing right next to the charges, the math is messy because you have to calculate the distance to each one separately. But if you move far away, we can simplify the physics: to derive the dipole potential approximation, we look at how the sum of two point-charge potentials behaves when the distance $r$ to the observer is much larger than the separation $d$ between the charges. Consider two charges $+Q$ and $-Q$ separated by a distance $d$ along the $z$-axis. The observer is at a point $bold(r)$ at an angle $theta$ from the dipole axis. The total potential is:
$
  V(bold(r),bold(d)) = V_+(bold(r),bold(d)) + V_-(bold(r),bold(d))  = Q/(4 pi #e_0) ( 1/(|bold(r) - bold(d)/2|) - 1/(|bold(r) + bold(d)/2|))
$
If we consider big $r$ with respect to $d$, it is possible to make an approximation:
$
  V(bold(r),bold(d)) = Q/(4 pi #e_0) ( (|bold(r) + bold(d)/2|-|bold(r) - bold(d)/2|)/(|bold(r) - bold(d)/2||bold(r) + bold(d)/2|)) =\
  =Q/(4 pi #e_0) (sqrt(bold(r) dot bold(r) + 2 bold(r) dot bold(d)/2  +  bold(d)/2 dot bold(d)/2) - sqrt(bold(r) dot bold(r) -2 bold(r) dot bold(d)/2 + bold(d)/2 dot bold(d)/2))/sqrt((bold(r) dot bold(r) +2 bold(r) dot bold(d)/2 - bold(d)/2 dot bold(d)/2)(bold(r) dot bold(r) -2 bold(r) dot bold(d)/2 - bold(d)/2 dot bold(d)/2)) tilde\
  tilde Q/(4 pi #e_0) (bold(r) dot bold(d) )/r^3
$
While we have already used the dipole moment to simplify the potential math, it is worth looking at the Electric Dipole Moment (p) as a fundamental physical property of matter. It describes not just "two charges," but how a system reacts to its environment. It is defined as 
$
  bold(p) = Q bold(d)
$
Therefore we can approximate $V$
$
  V(bold(r)) = (bold(p) dot bold(r))/(4 pi #e_0 r^3)
$
We can also approximate the field as 
$
  E_r = -partial_i (p_j x_j)/(4 pi #e_0 (x_k x_k)^(3/2)) = (3p_j x_j x_i sqrt(x_k x_k) - x_i (x_k x_k)^(3/2))/(4 pi #e_0 (x_k x_k)^3)
$
Therefore:
$
  bold(E)(bold(r)) = (3(bold(p) dot bold(r)) bold(r)  - r^2 bold(p))/(4 pi #e_0 r^5)
$
The interaction between an external electric field and a dipole is driven by the fact that the two opposite charges experience forces in opposite directions. If the electric field is uniform (the same strength everywhere), the net force on the dipole is zero because the push on the positive charge perfectly cancels the pull on the negative charge. However, because these forces are applied at different points, they create a torque (a rotational force). This torque acts like a mechanical spring, constantly trying to twist the dipole until it aligns perfectly with the direction of the field. Think of it like a compass needle in a magnetic field; the dipole wants to "point" along the electric field lines.
$
  bold(M) = bold(d) times bold(F) =  bold(d) times Q bold(E) = bold(p) times bold(E)
$
From an energetic perspective, the orientation of the dipole determines its stored energy. When the dipole is aligned with the field, the energy is at its minimum. It is "comfortable" here. Unstable Equilibrium: If you force the dipole to point in the opposite direction of the field, the energy is at its maximum. If you nudge it even slightly, it will violently swing back toward alignment. This energy relationship is defined as follows with first order approximation.
$ 
  U = Q[V(bold(r)+bold(d)) - V(bold(r))] tilde Q grad V(bold(r))dot bold(d) = - bold(p) dot bold(E)
$
The negative sign ensures that the lowest energy state occurs when the vectors are parallel.
If the field is non-uniform (stronger in one spot than another), a new phenomenon occurs: translation.
Because one end of the dipole is in a stronger field than the other, the forces no longer cancel out. The dipole will experience a net force pulling it toward the region of stronger field. This is why a neutral object like a piece of paper can be attracted to a charged comb; the comb creates a non-uniform field that induces and then pulls on the dipoles within the paper.





















#pagebreak()
#pagebreak()
= Materials in equilibrium
To begin our study of materials in the context of electromagnetism, we must recognize that not all matter responds to electric fields in the same way. When we place an object in an electric field, the microscopic particles, the electrons and nuclei, experience forces that shift their positions. The way these internal charges move defines the material's electrical personality. We generally classify materials into three primary categories based on the mobility of their internal charge carriers: conductors, insulators, and semiconductors.
Conductors are materials, like copper or gold, where some electrons are not bound to any specific atom but are free to wander through the entire volume of the object. When an external electric field is applied to a conductor, these free electrons shift almost instantly until they create an internal field that perfectly cancels out the external one. This leads to the remarkable property that the static electric field inside a solid conductor is always zero, and any excess charge must reside entirely on the outer surface.
Insulators, also known as dielectrics, behave very differently. In these materials, like glass, plastic, or pure water, every electron is tightly tethered to its parent atom or molecule. They cannot flow freely, but they can still be "stretched." Under the influence of an electric field, the electron clouds shift slightly away from the nuclei, creating billions of microscopic dipoles throughout the material. This process, called polarization, weakens the overall electric field within the material but does not cancel it out completely like a conductor does.
Semiconductors, such as silicon and germanium, sit in the delicate middle ground. Their ability to conduct electricity is intermediate and can be precisely controlled by adding impurities or changing the temperature. While they act like insulators at very low temperatures, they can be "activated" to behave like conductors under the right conditions. This tunable nature is what allows us to create transistors and the complex integrated circuits that power modern technology.
*Electrostatic equilibrium* is the state a conductor reaches when its internal charges have finished moving in response to an electric field. This process happens incredibly fast, usually in a fraction of a nanosecond for typical metals, and results in several "golden rules" that define how conductors behave.
== Conductors
The most fundamental property of a conductor in equilibrium is that the electric field inside the material is exactly zero. When a conductor is placed in an external electric field, the free electrons feel a force and shift their positions almost instantly. They pile up on one side, leaving the other side positively charged. This separation of charge creates an internal electric field that points in the opposite direction of the external one. The process continues until the internal field perfectly cancels the external field, leaving the interior of the metal completely neutral and field-free. Let $Omega$ to be a conductor, this property $bold(E)(bold(r)) = bold(0)$ is valid $forall_bold(r) in dot(Omega)$ (internally), by which 
$
  grad V = bold(0)
$
Potential energy in a conductor is defined by the fact that all free charges have already moved to their lowest possible energy state. Because electrons can roam freely, they will always rearrange themselves until there is no longer any electrical "pressure" forcing them to move. This leads to several unique energetic properties. The most important point is that the electric potential is constant throughout the entire volume of a conductor. In an energetic sense, this means the electrical altitude is the same everywhere. If you move a test charge from the center of a solid copper sphere to its surface, you do zero work because the electric field inside is zero. There is no "slope" to climb or descend. The entire object, regardless of its shape, sits at a single voltage. Also because of Gauss Law, given $D subset dot(Omega)$
$
  Q = #e_0 integral.cont_(partial D) bold(E) dot bold(n) dd(S) = 0
$
Because the internal field is zero, several other consequences follow. First, any excess charge you place on a conductor cannot stay inside the body of the material; the mutual repulsion between like charges pushes them all to the outer surface. Second, the entire conductor exists at a single, constant electric potential. This means there is no voltage difference between the center of a metal sphere and its surface. Third, the electric field at the very surface of the conductor must be perpendicular to that surface. If the field had any sideways component, it would push the surface electrons into motion, and the system would not be in equilibrium. The border of the body is an equipotential surface, therefore the electric field is orthogonal to $partial Omega$. We define a tiny cylindrical Gaussian "pillbox" of cross-sectional area $A$ straddling the surface. Let $partial scr(C) = scr(B)_"int" union scr(B)_"ext" union scr(L) $
$ 
  integral.cont_(partial scr(C)) bold(E) dot bold(n)  dd(S)  = integral_scr(B)_"ext" bold(E) dot bold(n) dd(S) = 1/#e_0 integral_(partial Omega inter scr(C)) sigma  dd(S)
$
If $scr(C)$ is small enough we can approximate the integrand functions as constants and $scr(B)_"ext" -> partial Omega inter scr(C)$ therefore :
$
  bold(E) dot bold(n) = sigma/#e_0 => bold(E) = sigma/#e_0 bold(n) 
$
This relationship is known as the Coloumb's law. If a conductor has a hollow cavity, the potential energy inside that empty space is also perfectly uniform. No matter how much the external environment changes or how many sparks hit the outside, the interior remains at a constant energy level. This is why sensitive electronics are placed in metal housings, to ensure they sit in a "flat" energetic landscape where no internal currents can be accidentally triggered. Suppose you place a positive charge $+Q$ inside a hollow cavity of a neutral conductor. Even though the charge isn't touching the metal, its electric field pulls the free electrons of the conductor toward the inner wall of the cavity. According to Gauss's Law, if we draw a Gaussian surface inside the metal (where the field must be zero), the total enclosed charge must be zero. To cancel out your $+Q$, exactly $-Q$ must move to the inner surface of the cavity. If the conductor was originally neutral, and you moved $-Q$ to the inner wall, you have left the rest of the conductor with a "deficit" of electrons. This results in a charge of $+Q$ appearing on the outer surface of the conductor. The interesting part is that the distribution of the $+Q$ on the outer surface does not depend on where the charge is inside the cavity. Whether you move the internal charge to the left or right, the outer surface "sees" only a total net charge and distributes it based only on the external shape of the conductor. Suppose for a moment that the inner surface of an empty cavity had a non-uniform charge distribution where some areas were positive and some were negative. If there were both positive and negative charges on the cavity wall, electric field lines would have to start on the positive charges and end on the negative charges. These lines would cross the empty space of the cavity. Imagine a closed loop $gamma$. We start at a positive charge on the wall, follow an electric field line through the vacuum of the cavity to a negative charge on the wall, and then return to the starting point by traveling through the solid body of the conductor. Since we are following a field line, $bold(E)$ and $dd(bold(l))$ are in the same direction. Therefore, $bold(E)⋅dd(bold(l)) != 0$. The integral along this segment is a positive value. We know that inside a conductor in equilibrium, $bold(E) = 0$. Therefore, $bold(E)⋅dd(bold(l)) = 0$ for this part of the path. However, we established that for any electrostatic field:
$
  integral.cont_gamma bold(E) dot dd(bold(l)) = 0
$
Our initial assumption must be wrong. If the integral must be zero, there cannot be any field lines in the cavity. If there are no field lines, there can be no regions of opposite charge on the inner wall. When a solid conductor is placed in an external electric field, the free electrons within the metal experience an immediate force. They migrate toward the side of the conductor that is "upstream" of the field lines, leaving the "downstream" side positively charged. This separation of charge is called electrostatic induction. These induced surface charges create their own internal electric field that points in the opposite direction of the external one. The electrons stop moving only when the internal field they have created perfectly cancels the external field. Consequently, the net electric field inside the material of the conductor becomes zero, and the entire conductor reaches a uniform electric potential.
In the case of a hollow conductor, often called a conducting shell, the physics becomes even more interesting. If the cavity inside the shell is empty, meaning there are no charges placed within it, the electric field inside that cavity is also zero. This is true regardless of how strong the external field is or how complex the shape of the conductor might be. The external field lines terminate on the induced charges on the outer surface, and since there is no charge inside the cavity to "start" or "end" new field lines, the interior remains completely shielded.
This phenomenon is the principle behind a Faraday cage. Because the field is zero inside a hollow conductor, it acts as a perfect shield against external electrical interference. If you were inside a hollow metal sphere and a massive bolt of lightning struck the outside, you would feel nothing; the metal skin guides the current around the exterior, and the internal field remains undisturbed. This is why airplanes are safe during thunderstorms and why sensitive electronic components are often encased in metal "cans" to prevent noise from outside signals.
If, however, you place a charge inside the cavity of the hollow conductor, the situation changes. While the field within the metal walls themselves remains zero, the charge inside the cavity will induce an equal and opposite charge on the inner wall of the shell. This, in turn, pushes an equivalent charge to the outer surface of the shell. In this scenario, there is an electric field inside the cavity (produced by the internal charge) and an electric field outside the shell (produced by the outer surface charge), but the thickness of the metal wall still prevents the internal and external fields from "communicating" or influencing each other directly. The relationship between the shape of a conductor and its electrical properties is one of the most practical aspects of electrostatics. While the electric potential is the same everywhere on a conductor, the surface charge density ($sigma$) and the electric field $bold(E)$ are not. They depend heavily on the local radius of curvature.


Consider two conducting spheres with radii $R_1$ and $R_2$, connected by a long, thin conducting wire. Let $R_1 > R_2$. Because they are connected, the entire system must be at the same electric potential $V$.
$ V_1 = V_2 $
The potential at the surface of a sphere with charge $Q$ and radius $R$ is:
$ V = 1 / (4 pi epsilon_0) Q / R $
Equating the potentials for both spheres:
$ 1 / (4 pi epsilon_0) Q_1 / R_1 = 1 / (4 pi epsilon_0) Q_2 / R_2 => Q_1 / R_1 = Q_2 / R_2 $
The surface charge density $sigma$ is defined as the charge per unit area:
$ sigma = Q / (4 pi R^2) => Q = sigma (4 pi R^2) $
Simplifying the terms:
$ sigma_1 R_1 = sigma_2 R_2 => sigma_1 / sigma_2 = R_2 / R_1 $
The local curvature $kappa$ of a sphere is defined as the reciprocal of its radius:
$ kappa = 1 / R $
Substituting $R = 1/kappa$ into our density relation:
$ sigma_1 / sigma_2 = (1 / kappa_2) / (1 / kappa_1) = kappa_1 / kappa_2 $
This implies a direct proportionality between charge density and curvature:
$ sigma prop kappa $
As the radius of curvature $R$ decreases (making the surface "sharper" or more curved), the curvature $kappa$ increases, and consequently, the surface charge density $sigma$ increases.

The electric capacity, or capacitance, of an isolated conductor is a physical quantity that measures its ability to store electric charge per unit of electric potential. It is defined as the ratio of the net charge $Q$ placed on the conductor to the resulting change in its electric potential $V$ relative to a reference point at infinity. Mathematically, this is expressed as $C$ equals $Q$ divided by $V$.
$
  C = Q/V
$
Because a conductor in equilibrium is an equipotential body, the potential $V$ is uniform across its entire volume and surface. The capacity $C$ depends strictly on the geometric properties of the conductor, such as its shape and size, and the permittivity of the surrounding medium. It does not depend on the amount of charge or the potential itself; if you double the charge, the potential doubles accordingly, leaving the ratio $C$ constant. When other conductors are brought near the primary conductor, the capacity increases due to the effects of electrostatic induction, which lowers the potential $V$ for the same amount of charge $Q$. This principle is the basis for the design of capacitors, which use two or more conductors to maximize the capacity within a small volume. When you add charge to a conductor, it costs energy because you are pushing like charges together against their mutual repulsion. This "stored" potential energy is equivalent to the work done to bring that charge from infinity to the conductor's surface. For a conductor with capacitance $C$ and total charge $Q$ at a potential $V$, the total electrostatic potential energy $U$ is:
$
  U = integral_0^Q V(tilde(Q)) dif tilde(Q) = integral_0^Q tilde(Q)/C dif tilde(Q) = Q^2/(2C) = 1/2 C V^2
$
While the potential is constant, the energy is "concentrated" in the electric field just outside the surface. Because the field is strongest where the surface is most curved (sharp points), the electrostatic pressure is also highest there. This pressure is a result of the surface charges trying to "push" each other off the conductor. The energy density $u_e$ at the surface is:
$
  u_e = 1/2 #e_0 |bold(E)|^2 = 1/2 #e_0 sigma^2/#e_0^2 = sigma^2/(2#e_0)
$
A capacitor is a system consisting of two conductors, called plates, that are placed near each other but are electrically insulated. When these plates are connected to a power source, they carry charges of equal magnitude but opposite sign, creating a potential difference between them. The primary purpose of a capacitor is to store electrical energy within the electric field that exists in the space between these plates.
The electric capacity, or capacitance, of such a system is the ratio of the magnitude of the charge on either conductor to the potential difference between them. This is expressed by:
$
  C = Q/(Delta V)
$ 
It is important to note that capacitance is a constant property of the device's physical construction. It is determined solely by the surface area of the plates, the distance separating them, and the nature of the insulating material, known as a dielectric, placed between them. When connecting multiple capacitors together, the way they are arranged, either in series or in parallel, dramatically changes the total capacitance of the circuit. This allows engineers to combine standard capacitor values to reach a specific target capacitance or to manage high voltage requirements. In a parallel circuit, the "top" plates of all capacitors are connected to one point, and the "bottom" plates are connected to another. Every capacitor in parallel experiences the same potential difference $Delta V$ because they are all connected to the same two terminals. Each capacitor stores a charge proportional to its own capacitance $Q_i = C_i Delta V$. The total charge $Q$ is the sum of all individual charges. The total capacitance is simply the sum of all individual capacitances:
$
  C_"eq" = sum_i C_i
$
Connecting capacitors in parallel is effectively like increasing the total surface area of the plates, which is why the total capacity increases.

In a series circuit, capacitors are connected in a single line, "head-to-tail.". Because of electrostatic induction, every capacitor in a series string must hold the exact same magnitude of charge $Q$. If the first plate gets $+Q$, it induces $-Q$ on its partner, which in turn leaves $+Q$ on the next plate, and so on. The total voltage $Delta V$ across the entire string is divided among the capacitors. Smaller capacitors will actually take on a larger share of the voltage. The reciprocal of the total capacitance is the sum of the reciprocals of the individual capacitances:
$
  1/C_"eq" = sum_i 1/C_i
$
The total capacitance in series is always smaller than the smallest individual capacitor in the group. This is because connecting them in series is effectively like increasing the total distance between the very first and very last plate.
When we transition from a single isolated conductor to a system of multiple conductors, we enter the realm of mutual capacitance. In this context, the charge on one conductor doesn't just depend on its own potential, but on the potentials of every other conductor in the vicinity. Imagine a system of n conductors. If you put charge on Conductor 1, it creates an electric field that reaches Conductor 2, Conductor 3, and so on. This field induces a redistribution of charges on those other conductors. Therefore, to describe the state of the system, we need a linear relationship between the charges $Q_i$ and the potentials $V_i$. This is described by the Capacitance tensor (or the Coefficients of Capacity):
$
  Q_i = C_(i j)V_j
$
The terms in this tensor have specific physical meanings: 
- Capacitance Coefficients $C_(i i)$: These are always positive. $C_(i i)$ represents the charge required on Conductor i to raise its potential to 1 Volt while keeping all other conductors grounded.
- Induction Coefficients $C_(i j)$ where $i!=j$: These are always negative (or zero). If you raise Conductor $j$ to a positive potential, it will induce a negative charge on the grounded Conductor $i$. 
One of the most beautiful results in electrostatics is the Green's Reciprocity Theorem, which proves that the capacitance matrix is symmetric:
$
  bold(C) in "Sym"
$
This means that the charge induced on Conductor 1 by a potential on Conductor 2 is exactly the same as the charge induced on Conductor 2 by the same potential on Conductor 1. This symmetry is a direct consequence of the conservation of energy and the way potential energy is stored in the electric field.
== Dielectrics
When we transition from a vacuum to a medium filled with dielectric materials, the fundamental behavior of the electric field changes. A dielectric is an insulator that, while not allowing the flow of free electrons, can be polarized by an external electric field. On a molecular level, the applied electric field $bold(E)_0$ exerts forces on the bound charges. The electron cloud shifts slightly relative to the nucleus, creating an induced dipole or could be molecular dipoles (like water) rotate to align with the field. The result is a net *Polarization vector*  defined as follows:
$
  bold(P)(bold(r)) = lim_(v->0) (bold(p)(bold(r)))/v
$
which represents the density of dipole moments per unit volume. This alignment creates "bound charges" on the surfaces and within the volume of the material. The bound charges on the surfaces of the dielectric create an internal electric field $bold(E)_b$​ that points in the opposite direction to the external field $bold(E)_0$. The net electric field $bold(E)$ inside the dielectric is therefore weaker than the vacuum field:
$
  bold(E) = bold(E)_0 - bold(E)_b
$
In linear, isotropic dielectrics, this reduction is characterized by the relative permittivity $epsilon_r$:
$
  bold(E)=1/epsilon_r bold(E)_0
$
Polarization is the process by which a dielectric material responds to an external electric field. While an insulator doesn't have "free" electrons like a conductor, its "bound" charges (electrons and nuclei) can still shift slightly, creating a sea of microscopic dipoles. In most common materials (Linear, Isotropic, Homogeneous), $bold(P)$ is directly proportional to the local electric field 
$
  bold(P)=#e_0 chi_e bold(E)
$
When a dielectric is polarized, the internal dipoles align. Inside the bulk of the material, the positive end of one dipole sits next to the negative end of another, effectively canceling out. However, this cancellation fails in two places: there is no neighboring dipole to cancel the "exposed" ends, leading to Surface Bound Charges $sigma_b$; if the polarization is non-uniform (varying from point to point), there is an accumulation of net charge known as Volume Bound Charges $rho_b$.
Consider a distribution of dipoles, then
$
  V(bold(r)) = 1/(4 pi #e_0) integral_Omega (bold(P)(bold(tilde(r))) dot (bold(r) - bold(tilde(r))))/(|bold(r) - bold(tilde(r))|^3) dif tilde(v) = 1/(4 pi #e_0) integral_Omega bold(P)(bold(tilde(r))) dot grad_bold(tilde(r)) 1/(|bold(r) - bold(tilde(r))|) dif tilde(v)
$
Given the relation 
$
  P_i partial_i 1/sqrt(r_j^2 + tilde(r)_j^2 - 2 r_j tilde(r)_j) = partial_i ( P_i/sqrt(r_j^2 + tilde(r)_j^2 - 2 r_j tilde(r)_j)) -  (partial_i P_i)/sqrt(r_j^2 + tilde(r)_j^2 - 2 r_j tilde(r)_j)
$
we can rewrite
$
  V(bold(r)) = 1/(4 pi #e_0) integral_Omega div ((bold(P)(bold(tilde(r))))/(|bold(r) - bold(tilde(r))|)) -  (div bold(P)(bold(tilde(r))))/(|bold(r) - bold(tilde(r))|) dif tilde(v) =\
  = 1/(4 pi #e_0) integral.cont_(partial Omega) (bold(P)(bold(tilde(r))) dot bold(n))/(|bold(r) - bold(tilde(r))|) dif tilde(S) + integral_Omega (-div bold(P)(bold(tilde(r))))/(|bold(r) - bold(tilde(r))|) dif tilde(v)
$
We derive the two fundamental theorems of polarization: the volume bound charge density $rho_b$ is the negative divergence of the polarization field
$
  div bold(P) = -rho_b
$
and the surface bound charge density $sigma_b$ is the normal component of the polarization field at the boundary
$
  bold(P) dot bold(n) = sigma_b
$
It means that if the polarization vectors are "spreading out" (positive divergence) from a region, they are pulling their associated positive charges away and leaving behind a net negative bound charge.
The electric displacement vector $bold(D)$, also known as the electric flux density, is a vector field used in electromagnetism to account for the effects of free and bound charges within a medium. It is particularly useful in Maxwell's equations when dealing with dielectric materials.
In a vacuum, the displacement vector is simply the electric field $bold(E)$ scaled by the vacuum permittivity. However, in a material medium, the electric field causes a redistribution of bound charges, a process called polarization. The vector $bold(D)$ is defined as the sum of the vacuum contribution and the polarization density $bold(P)$ of the material. The mathematical relationship is expressed as 
$
  bold(D) = #e_0 bold(E) + bold(P)
$
One of its primary roles is in Gauss's Law for displacement, which states that the divergence of $bold(D)$ is equal to the free charge density. This allows for calculations of the electric field in complex materials by focusing only on the charges we can control (free charges) rather than the internal microscopic behavior of every atom in a dielectric. In linear, isotropic, and homogeneous materials, $bold(D)$ is often simplified to be the product of the material's total permittivity and the electric field $bold(E)$
$
  div bold(D) = #e_0 div bold(E) + div bold(P) = rho - rho_b = rho_f
$
When you look at the boundaries of a dielectric material, the relations for the divergence of polarization take a specific form because the polarization vector $bold(P)$ typically drops to zero abruptly outside the material. This creates what we call bound surface charge. Physically, this happens because inside the material, the dipoles are lined up head-to-tail. In the bulk, the positive end of one dipole cancels the negative end of the next. However, at the boundary, there is no "next" dipole to cancel the charge. This leaves a layer of uncompensated charge on the surface. This leads to the boundary conditions for the electric fields. For the displacement field $bold(D)$, the change in its normal component across the boundary is equal to the free surface charge density. If there is no free charge, the normal component of $bold(D)$ is continuous. For the electric field $bold(E)$, the normal component is discontinuous specifically because of that bound surface charge created by the polarization. In isotropic materials, the physical properties do not depend on the direction in which they are measured. When we talk about electromagnetism, this means the material responds to an electric field  $bold(E)$ in the exact same way regardless of how the field is oriented:
$
  bold(D) = #e_0 (1 + chi_e) bold(E) = #e_0 epsilon_r bold(E)
$

When you classify materials by their electrical response, the two primary parameters are the electric susceptibility $chi_e$ and the relative permittivity $epsilon_r$. These two are linked by the simple relationship $epsilon_r = 1 + chi_e$. Both are dimensionless quantities that describe how easily a material polarizes in response to an external electric field.
In a vacuum, there is no matter to polarize. Therefore, the susceptibility is exactly zero ($chi_e = 0$). Since there is no additional polarization $P$, the relative permittivity is exactly one ($epsilon_r = 1$). This serves as the baseline for all other materials.
Most common insulators like glass, plastic, or oil fall into this category. They have positive susceptibilities ($chi_e > 0$), meaning they polarize in the same direction as the applied field. In an ideal conductor, charges move freely until the internal electric field is completely canceled out ($bold(E) = bold(0)$). If you look at this through the lens of dielectrics, a conductor behaves as if it has an "infinite" susceptibility ($chi_e -> +infinity$) and an infinite relative permittivity ($epsilon_r -> +infinity$). This is because the material effectively "perfectly" polarizes to oppose any external field.
Some specialized ceramics (like Barium Titanate) exhibit very high values of $chi_e$, often in the thousands. 

#table(
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  align: horizon,
  [*Material Type*], [*$chi_e$ Range*], [*$epsilon_r$ Range*], [*Physical Meaning*],
  [Vacuum], [0], [1], [No polarization possible.],
  [Non-polar Gases], [$~ 0.0001 - 0.001$], [$~ 1.0001 - 1.001$], [Very weak electronic displacement.],
  [Common Solids], [$1 - 10$], [$2 - 11$], [Significant molecular/electronic shifting.],
  [Polar Liquids], [$10 - 100$], [$11 - 101$], [Strong alignment of molecular dipoles.],
  [Ferroelectrics], [$> 1000$], [$> 1001$], [Spontaneous alignment of dipoles.],
)

== Electrostatic Boundary Conditions in Matter

In the study of material electrostatics, we analyze how the electric field behaves at the interface between two different media (Medium 1 and Medium 2). This behavior is governed by the two fundamental laws of electrostatics: the conservative nature of the field and Gauss's Law. We define a unit normal vector $bold(n)$ pointing from Medium 2 into Medium 1, and a unit tangential vector $bold(t)$ parallel to the interface.

The electrostatic field is conservative. This is expressed locally as $nabla times bold(E) = 0$. By applying Stokes' Theorem, the line integral of the electric field around any closed loop $gamma$ must vanish. Consider a rectangular loop $gamma$ of length $L$ and infinitesimal height $h$. The loop straddles the boundary, with one long side in Medium 1 and the other in Medium 2.



$ integral.cont_gamma bold(E) dot d bold(l) = 0 $

We decompose the integral into four segments (top, bottom, and two sides). As we shrink the height $h arrow 0$, the contributions from the side segments become negligible. The remaining segments are:

$ integral_"top" bold(E)_1 dot d bold(l) + integral_"bottom" bold(E)_2 dot d bold(l) = 0 $

Since $d bold(l) = d l bold(t)$ on the top and $d bold(l) = -d l bold(t)$ on the bottom:

$ (bold(E)_1 dot bold(t)) L - (bold(E)_2 dot bold(t)) L = 0 $

Factoring out the length $L$, we obtain the fundamental result:

$ E_(1, t) - E_(2, t) = 0 arrow.r.long E_(1, t) = E_(2, t) $

The tangential component of the electric field is always continuous across any interface.
Gauss's Law for the electric displacement field $bold(D)$ relates the flux of $bold(D)$ to the free charge $Q_f$ enclosed within a surface. We define a "Gaussian pillbox" (a small cylinder) with cross-sectional area $A$ and infinitesimal height $h$ straddling the interface. According to the Divergence Theorem:

$ integral.cont_Sigma bold(D) dot d bold(a) = Q_(f, "enclosed") $

The total flux is the sum of the flux through the top face, the bottom face, and the side walls. As $h arrow 0$, the side-wall flux vanishes. The top face area vector is $A bold(n)$ and the bottom face area vector is $-A bold(n)$:

$ (bold(D)_1 dot bold(n)) A - (bold(D)_2 dot bold(n)) A = sigma_f A $

where $sigma_f$ is the free surface charge density. Dividing by $A$:

$ D_(1, n) - D_(2, n) = sigma_f $

The normal component of the displacement field $bold(D)$ is discontinuous by an amount equal to the free surface charge density.
In most practical cases involving dielectrics, there is no free surface charge ($sigma_f = 0$). However, the electric field $bold(E)$ still experiences a jump because the materials have different permittivities ($epsilon_1$ and $epsilon_2$). For linear media, where $bold(D) = epsilon bold(E)$, the normal condition becomes:

$ epsilon_1 E_(1, n) - epsilon_2 E_(2, n) = 0 arrow.r.long E_(1, n) / E_(2, n) = epsilon_2 / epsilon_1 $

This discontinuity in $bold(E)$ is physically caused by the accumulation of bound surface charge ($sigma_b$) resulting from the polarization of the atoms at the boundary. The total effect of these two conditions is that electric field lines "refract" or bend when passing from one medium to another, satisfying the relation:

$ (tan theta_1) / (tan theta_2) = epsilon_1 / epsilon_2 $

where $theta$ is the angle between the field vector and the normal to the surface.

The polarization vector $bold(P)$ represents the material response. Its behavior at an interface is linked to the accumulation of bound charges. The jump in the normal component of $bold(P)$ defines the bound surface charge density $sigma_b$. Using the relation $bold(D) = epsilon_0 bold(E) + bold(P)$ and the previous results for $bold(D)$ and $bold(E)$:

$ (bold(P)_1 - bold(P)_2) dot bold(n) = -sigma_b $

If Medium 1 is a vacuum ($bold(P)_1 = 0$), the bound charge on the surface of Medium 2 is:
$ sigma_b = bold(P)_2 dot bold(n) $

This discontinuity explains why the electric field $bold(E)$ jumps at a boundary even when no free charge is present; the aligned dipoles in the dielectric create a layer of charge that produces its own field. For linear, isotropic media, $bold(P) = epsilon_0 chi_e bold(E)$, where $chi_e$ is the electric susceptibility. Since $bold(E)_t$ is continuous:

$ bold(P)_(1, t) / chi_(e 1) = bold(P)_(2, t) / chi_(e 2) $

Thus, $bold(P)_t$ is discontinuous across the boundary unless the two media have the same susceptibility.










































#pagebreak()
#pagebreak()
= Electric Current
When we transition from electrostatics to the study of moving charges, we enter the realm of electrodynamics. While electrostatics deals with charges at rest and the fields they create, this new chapter focuses on the energy and dynamics involved when charges are in motion. This movement is what we call electric current, and it is the foundation of all electrical technology. The concept of a stationary flow (also known as steady current) is a specific condition where the flow of charge does not change over time. In a stationary state, the amount of charge passing through any given cross-section of a conductor is constant, and more importantly, the charge density at any point within the conductor remains constant. This means that while individual charges are moving, they are not accumulating or depleting in any particular region of the wire. In a conductor, electric current is the net flow of electric charge through a specific cross-sectional area per unit of time. While electrons in a metal are always moving at high speeds in random directions (thermal motion), they do not produce a current unless an external electric field is applied. Once a field is present, a small, net drift velocity is imposed on these electrons, creating an ordered flow. The average current $I$ is defined as the rate at which charge $Q$ passes through a surface:
$
  I = dv(Q,t)
$
In the International System of Units (SI), current is measured in Amperes (A), where 1A = 1C/s. To understand what is happening inside the wire, we can express the current in terms of the microscopic properties of the conductor because of Raynolds theorem:
$
  dv(,t)Q(Omega,t) = integral_Omega(t) pdv(rho,t) dif v + integral.cont_(partial Omega(t)) bold(J) dot bold(n) dd(S) = 0 
$
To understand what is happening inside the wire, we can express the current in terms of the microscopic properties of the conductor:
$
  pdv(rho,t) + div bold(J) = 0
$
Mathematically, stationary flow is defined by the continuity equation. Under stationary conditions, the divergence of the current density vector $bold(J)$ is zero:
$
  div bold(J) = 0
$
This equation is the field-theory version of Kirchhoff's First Law. It tells us that for any closed surface, the total current entering must equal the total current leaving. If this weren't true, charge would be building up somewhere, which would change the electric field over time and break the stationary condition. In a stationary flow, the electric field inside the conductor is not zero (unlike in electrostatics). This field $bold(E)$ is what exerts the force necessary to overcome the internal resistance of the material and keep the charges moving at a constant drift velocity. This leads to a steady state where the energy supplied by the electric field is perfectly balanced by the energy dissipated as heat within the conductor.
$
  integral_Omega(t) div bold(J) dif v = integral.cont_(partial Omega(t)) bold(J) dot bold(n) dd(S) = integral.cont_(partial Omega(t)) rho bold(omega)_d dot bold(n) dd(S)
$
the consequence is for $bold(omega)_d parallel bold(n)$, considering the drift velocity of electrons inside the conductor from section $A_0$ to section $A_f$
$
  N_0 e A_0 bold(omega)_(d 0) = N_f e A_f bold(omega)_(d f)
$

== Ohm's Law
To linearize the relationship between current density $bold(J)$ and the electric field $bold(E)$, we assume that for sufficiently small fields, we can approximate the current response using a first-order expansion. In the most general case, we do not assume the material is isotropic, meaning the conductivity is treated as a property that can vary based on the orientation of the field. Resistance is a direct result of these microscopic collisions. Every time an electron strikes an ion in the lattice, it transfers some of its kinetic energy to the ion. This causes the ions to vibrate more vigorously. In macroscopic terms, we perceive this increased lattice vibration as an increase in temperature. This is the microscopic explanation for Joule heating: the conversion of electrical potential energy into thermal energy through atomic-scale scattering. At a microscopic level, Ohm's law states that the current density is a function of the electric field. For most materials under moderate fields, we can perform a first-order Taylor expansion (linearization) around $bold(E)=bold(0)$. This gives us the linear constitutive equation:
$
  bold(J)(bold(E)) = bold(J)(bold(0)) + partial_bold(E)evaluated(bold(J))_(bold(E)=bold(0))bold(E) + o|bold(E)| tilde bold(sigma) bold(E)
$
for isotropic materials
$
  bold(J)(bold(E)) = sigma bold(E)
$
To discuss this profoundly, we must look at the conductivity tensor sigma as a linear operator that maps the vector space of electric fields into the vector space of current densities. When we move away from the isotropic assumption, the relationship $bold(J) = bold(sigma) bold(E)$ represents a transformation where the material acts as a medium that rotates and scales the input field. The most insightful way to understand an anisotropic conductor is through its eigenvectors and eigenvalues. For any symmetric conductivity tensor, there exist three mutually perpendicular directions known as the principal axes of the material. These directions are the eigenvectors of the sigma tensor. If you apply an electric field $bold(E)$ exactly along one of these eigenvectors, the resulting current density $bold(J)$ will be perfectly parallel to $bold(E)$. The corresponding eigenvalue represents the principal conductivity along that specific axis. The Joule effect, also known as Joule heating or ohmic heating, is the physical process by which the passage of an electric current through a conductor results in the production of thermal energy. This phenomenon occurs because the electric field driving the current does work on the charge carriers, and this energy is subsequently transferred to the material through microscopic interactions. At the atomic level, the process is driven by scattering. In a metallic conductor, free electrons are accelerated by the internal electric field. However, they do not move unimpeded. They constantly collide with the ions that make up the crystal lattice of the metal, as well as with impurities and structural defects. Each collision acts as a friction-like event where the kinetic energy gained by the electron from the electric field is transferred to the lattice ions. These ions then vibrate more intensely about their equilibrium positions. Since the temperature of a solid is a macroscopic measure of these atomic vibrations, the material heats up. The power of the electrostatic force over a charge density:
$
  dot(W) = integral_Omega dot(w) dif v = integral_Omega rho bold(E) dot bold(omega) dif v = integral_Omega bold(J) dot bold(E)  dif v
$
therefore the power density is defined locally as 
$
  dot(w) = bold(J) dot bold(E) = bold(sigma) bold(E) dot bold(E)
$
If we consider a global relationship like the total power dissipation in the volume, we use the quadratic form $bold(sigma) bold(E) dot bold(E)$. Because the tensor is positive-definite (because $dot(w) > 0$ for real processes with dissipation), all its eigenvalues must be positive, ensuring that the global energy dissipation is always positive regardless of the field's orientation. The eigenvectors define the ellipsoid of conductivity; the major axis of this ellipsoid points in the direction where the material is most conductive, corresponding to the largest eigenvalue. In an isotropic material, $bold(J)$ and $bold(E)$ always point in the same direction. When you apply a voltage across a wire, the electric field is parallel to the axis of the wire, and the current flows exactly along that same axis. The integration is simple because you are dealing with scalar magnitudes:
$
  1/(|Sigma|) integral_Sigma bold(J) dot bold(n) dd(S) = sigma 1/(|gamma|) integral_gamma bold(E) dot dd(bold(l))
$
Actually, the transition to the classic form V=RI is most straightforward in an isotropic material, but it can still be valid for anisotropic materials under specific conditions.
$
  1/(|Sigma|) I = sigma 1/(|gamma|) Delta V
$
or 
$
  Delta V = (|gamma|)/(sigma|Sigma|) I = eta l/A I  = R I
$
The second Ohm's law is just the definition of the *resistance* constant $R$, where $eta$ is a property of the material called *resistivity*.

== Continuous Circuits
An electric circuit is a closed loop or path through which an electric current can flow. In its most fundamental form, it consists of three essential components: a source of electrical energy, such as a battery or generator; a conductive path, typically made of metallic wires; and a load, which is a device like a lamp or resistor that consumes the electrical energy to perform work. For a circuit to function, there must be a continuous, unbroken path from the positive terminal of the power source to the negative terminal, allowing the potential difference provided by the source to drive the charge carriers through the medium. From a physical perspective, a circuit is a system that enables the transfer of energy from a source to a distant location via the movement of electrons. When the path is complete, it is known as a closed circuit. If there is any break in the path, such as an open switch or a broken wire, the flow of charge stops immediately because the electric field can no longer maintain a steady state of motion across the gap; this is referred to as an open circuit. In more complex systems, circuits can be organized in different configurations, such as series or parallel. In a series circuit, components are connected one after another so that the same current must pass through every element in sequence. In a parallel circuit, the current is divided into multiple branches, allowing different components to operate independently under the same voltage. Regardless of the complexity, every electric circuit is governed by the conservation of charge and energy, which are macroscopically expressed through Kirchhoff's Laws and Ohm's Law. A continuous circuit, often referred to as a closed circuit, is a complete and uninterrupted path that allows for the steady flow of electric current. For a circuit to be considered continuous, there must be a seamless connection of conductive materials forming a loop that connects the high-potential terminal of a power source to its low-potential terminal. In the context of the stationary flow we discussed, a continuous circuit is the physical requirement for maintaining a non-zero current density $bold(J)$. If the continuity of the path is broken at any point, whether by a switch, a broken wire, or an air gap, the circuit becomes open. In an open circuit, charges quickly accumulate at the break, creating a localized electric field that opposes the source's field, bringing the net movement of charge to an immediate halt. From a field theory perspective, a continuous circuit ensures that the continuity equation for stationary flow, $div bold(J)=0$, is satisfied throughout the entire loop. This implies that the total current entering any node or section of the wire is exactly equal to the current leaving it, preventing any indefinite buildup of charge that would disrupt the steady state. An electric generator is a device capable of transforming non-electrical energy (mechanical, chemical, thermal, or solar) into electrical energy. Its primary function is to maintain a constant potential difference between two points, known as terminals, allowing a steady current to flow through an external circuit. Why do we need it? As we have seen with the Joule effect, whenever current flows through a conductor, energy is dissipated as heat. Without a generator, the charges would move from a point of high potential to a point of low potential until the potentials equalize, at which point the current would stop. A generator acts like a "charge pump." To keep the current flowing, it must take charges that have arrived at the low-potential terminal and push them back up to the high-potential terminal. This requires doing work against the internal electric field of the circuit. In electrostatics, the electric field $bold(E)$ is conservative, meaning its line integral around a closed loop is always zero. However, if the field in a circuit were purely conservative, a charge could never complete a full loop and return to its starting point with the same energy; the resistive losses would drain its potential. To overcome this, a generator creates a non-conservative force field, often called the electromotive field $bold(E)^*$. This field is of non-electrostatic origin (e.g., chemical reactions in a battery or magnetic induction in a turbine). Within the generator, this field $bold(E)^*$ pushes charges in the direction opposite to the electrostatic field $bold(E)_c$. The total field at any point is:
$
  bold(E)_"tot"  = bold(E)_c + bold(E)^*
$
While the electrostatic part $bold(E)_c$ is conservative, the term $bold(E)^*$ is not. It is this non-conservative nature that allows the generator to "inject" energy into the system, making the integral of the total field around the circuit non-zero. A charge therefore does this work 
$
  W = Q integral.cont_gamma bold(E)_"tot" dot dd(bold(l)) = Q integral.cont_gamma (bold(E)_c + bold(E)^*) dot dd(bold(l)) = Q integral.cont_gamma bold(E)^* dot dd(bold(l)) = Q integral_(gamma^*) bold(E)^* dot dd(bold(l)) 
$
where $gamma^* subset gamma$ is the path through the generator. The electromotive force (*emf*) is not actually a "force" in the Newtonian sense, but rather a measure of energy. It is defined as the work done by the generator per unit charge to move that charge through the generator from one terminal to the other. In other therms 
$
  xi = integral_(gamma^*) bold(E)^* dot dd(bold(l)) 
$
In a complete circuit with a generator of emf $xi$ and a total resistance $R$ (*including the internal resistance of the generator*), the relationship becomes (Ohm's law):
$
  xi = R I
$
In physics, the distinction between an ideal and a real generator is defined by how the device responds to an electrical load. An ideal generator is a theoretical construct that maintains a constant electromotive force regardless of how much current is drawn from it. It is characterized by having zero internal resistance, meaning the potential difference across its terminals is always equal to its emf. This implies that the generator can provide any amount of power without suffering a drop in voltage or generating internal heat. A real generator, such as a chemical battery or a mechanical alternator, always possesses an internal resistance, denoted as $r$. This resistance represents the physical limitations of the materials and processes inside the device, such as the mobility of ions in an electrolyte or the resistance of copper windings in a turbine. Because of this internal resistance, the terminal voltage $V$ is no longer constant. When a current I flows through the circuit, a portion of the electromotive force is used up inside the generator itself. This drop in voltage means that as you increase the current demanded by the circuit, the available voltage at the terminals decreases linearly. Under open-circuit conditions, where no current is flowing, the terminal voltage is exactly equal to the emf. However, under load, the generator becomes less efficient because some energy is dissipated as heat within the generator's own internal structure due to the Joule effect, calculated as $r$ times the square of the current. A critical consequence of this internal resistance is the short-circuit current limit. While an ideal generator would theoretically produce infinite current in a short circuit, a real generator is limited to a maximum current of $xi$ divided by $r$. Furthermore, this internal resistance leads to the maximum power transfer theorem, which states that a real generator delivers the most possible power to an external load only when the load's resistance is exactly equal to the generator's internal resistance. Kirchhoff's laws are two fundamental principles in electrical engineering that describe the conservation of energy and charge within an electric circuit. They allow us to move beyond simple series or parallel configurations and analyze complex networks of interconnected conductors, known as meshes and nodes. These laws are the macroscopic consequences of the stationary flow conditions and the properties of the electric field we have discussed previously. The first law, known as Kirchhoff's Current Law or the node rule, is a direct statement of the conservation of electric charge. It applies to any junction or node in a circuit where three or more conductors meet. According to this law, the sum of all currents entering a node must be exactly equal to the sum of all currents leaving that node. In the context of stationary flow, where the divergence of the current density $div bold(J) = 0$ is zero, this means that charge cannot accumulate at a point. Mathematically, it is often written as the sum of currents equals zero, provided that entering and leaving currents are assigned opposite signs. To move from this local form to the node rule, we integrate this divergence over a volume V that encloses a circuit junction:
$
  integral_Omega div bold(J) dif v = 0
$
Using the Divergence Theorem (Gauss's Theorem), we transform this volume integral into a surface integral over the boundary  of the node:
$
  integral.cont_(partial Omega) bold(J) dot bold(n) dd(S) = 0
$
In a circuit, the current density $bold(J)$ is non-zero only within the conductive wires crossing the surface $partial Omega$. The integral becomes the sum of the currents $I_k$ passing through those wires. Assigning a positive sign to currents leaving the volume and a negative sign to those entering, we get:
$
  sum_k I_k = 0
$
The second law, known as Kirchhoff's Voltage Law or the loop rule, is a statement of the conservation of energy. It applies to any closed loop or mesh within a circuit. This law states that the algebraic sum of all potential differences, including the electromotive forces from generators and the voltage drops across resistors, must be zero for a complete circuit loop. This is rooted in the conservative nature of the electrostatic field; since the potential is a state function, if you travel around a closed path and return to the starting point, the total change in potential must be zero. We integrate this total field around a closed loop $gamma$
$
  integral.cont_gamma bold(E)_"tot" dot dd(bold(l)) = integral.cont_gamma (bold(E)_c + bold(E)^*) dot dd(bold(l)) = integral_(union.big_i gamma^*_i) bold(E)^* dot dd(bold(l)) = sum_i xi_i
$
where it was consider a loop with multiple generators each with path $gamma^*_i$ that 
$
  union.big_i gamma^*_i subset gamma
$
Using the local Ohm's Law $bold(J) =sigma bold(E)_"tot"$, we can replace $bold(E)_"tot"$​ with 
$
  bold(E)_"tot" = bold(J)/sigma quad "or" bold(E)_"tot"= eta bold(J)
$
$
  integral.cont_gamma eta bold(J) dot dd(bold(l)) = sum_i xi_i
$
It is proven the second Kirchhoff's law
$
  sum_i xi_i = sum_i R_i I_i
$
This confirms that the sum of potential differences around any closed loop is zero.




















#pagebreak()
#pagebreak()
= Magnetostatics
Magnetostatics is the study of magnetic fields in systems where the currents are steady or stationary, meaning they do not change over time. While electrostatics deals with the forces between stationary charges, magnetism is fundamentally a phenomenon of moving charges. This new chapter marks a shift from the study of the electric field $bold(E)$ to the magnetic field $bold(B)$, and it reveals a deep symmetry in how nature handles electricity and motion. The concept of magnetism began with the observation of natural permanent magnets, such as lodestone, which exert forces on other magnets or iron objects. However, the true breakthrough in our understanding came with the discovery that an electric current flowing through a wire creates a magnetic field around it. This link between electricity and magnetism is what defines electromagnetism. Unlike electric charges, which can exist as isolated positive or negative particles (monopoles), magnetism always appears in pairs of north and south poles. Even if you break a magnet in half, you simply create two smaller magnets, each with its own north and south pole. On a microscopic level, magnetism in materials arises from the motion of electrons. This includes both their orbital motion around the nucleus and an intrinsic property called spin. In most materials, these tiny magnetic moments point in random directions and cancel each other out. In magnetic materials, these moments align, creating a macroscopic magnetic field. In magnetostatics, we focus on the fields produced by macroscopic, steady currents described by the current density $bold(J)$. The fundamental law governing the creation of these fields is the Biot-Savart Law, which describes how a small segment of current contributes to the total magnetic field at a point in space. This is the magnetic equivalent of Coulomb's Law. Another cornerstone is Ampere's Law, which relates the circulation of the magnetic field around a closed loop to the total current passing through that loop. This is the magnetic counterpart to Gauss's Law. One of the most striking features of magnetostatics is that the magnetic field is non-conservative. Unlike the electrostatic field, the work done by a magnetic force on a moving charge is always zero because the magnetic force is always perpendicular to the velocity of the charge. This means that while a magnetic field can change the direction of a particle's motion, it cannot change its kinetic energy.

== Lorentz Force
The Lorentz force is the fundamental law that describes how a magnetic field interacts with a moving charge. It serves as the bridge between the field $bold(B)$ and the mechanical motion of particles. When a particle with charge $Q$ moves with a velocity $bold(v)$ through a region containing both an electric field E and a magnetic field $bold(B)$, the total force $bold(F)$ exerted on it is:
$
  bold(F)(bold(r)) = Q[bold(E)(bold(r)) + bold(v) times bold(B)(bold(r))] = bold(F)_e (bold(r)) + bold(F)_m (bold(r))
$
One of the most significant characteristics of the magnetic Lorentz force is its geometry. Because it is the result of a cross product, the force is always perpendicular to both the velocity of the particle and the magnetic field. This leads to a fundamental physical principle: a static magnetic field does no work on a moving charge. Since power is the dot product of force and velocity, and the magnetic force is always orthogonal to the velocity, the power delivered by the magnetic field is always zero. Consequently, a magnetic field can change the direction of a charge, causing it to move in a curved or circular path, but it cannot change the particle's kinetic energy or speed. When we apply this concept to a macroscopic conductor, we observe the Laplace force. In this case, the individual Lorentz forces acting on the billions of electrons moving through a wire manifest as a collective force on the wire itself. This force is proportional to the current, the length of the conductor, and the strength of the external magnetic field, and it acts in a direction perpendicular to both the wire and the field lines. This is the underlying principle behind the operation of electric motors, where magnetic fields are used to convert electrical energy into mechanical torque. A profound consequence of the Lorentz force being perpendicular to velocity is that the magnetic field does no work on a free charge.
The power $P$ delivered by the magnetic force is:
$
  P = bold(F)_m dot bold(v) = Q (bold(v) times bold(B)) dot bold(v) = 0
$
This means a static magnetic field can change the direction of a particle (causing it to spiral or move in a circle), but it cannot change its speed or its kinetic energy. This is a stark contrast to the electric field, which accelerates charges and changes their energy. The Lorentz force also explains why magnetic fields can be used to trap or steer particles in devices like mass spectrometers or particle accelerators. In a uniform magnetic field, a particle with a velocity perpendicular to the field will undergo uniform circular motion. The radius of this circle, known as the Larmor radius, is determined by the balance between the magnetic force and the centripetal acceleration. This allows scientists to calculate the mass-to-charge ratio of unknown particles by observing their trajectory within a calibrated magnetic field. To prove the Laplace force rigorously, we must bridge the gap between the microscopic Lorentz force acting on individual charge carriers and the macroscopic force observed on a bulk conductor.
$
  bold(F)_m = integral_Omega rho bold(v) times bold(B) dif tau = integral_Omega bold(J) times bold(B) dif tau
$
We must apply a specific geometric approximation. We assume the conductor is slim (or filiform), meaning its cross-sectional area $A$ is very small compared to its length $l$. In this approximation, we decompose the volume element $dif tau$ into a differential cross-section $dif A$ and a differential length element dl along the wire's axis:
$
  bold(F)_m = integral_gamma integral_Sigma  bold(J) times bold(B)  dif l =  integral_gamma (integral_Sigma  bold(J) dif A )dif l times bold(B) = 
  integral_gamma I dd(bold(l)) times bold(B)
$

== Magnetic field
Unlike the electric field, which arises from static charges, the magnetic field is generated exclusively by charges in motion, such as electric currents or the intrinsic spin of electrons. Its operational definition is rooted in the Lorentz force: a magnetic field exists at a point if a charge q passing through that point with velocity v experiences a force that is perpendicular to both the velocity vector and the field vector itself. One of the most fundamental characteristics of the magnetic field is the absence of magnetic monopoles. While in electrostatics we can isolate a positive charge from a negative one, in magnetism, North and South poles are inseparable. This is mathematically expressed by Gauss's Law for magnetism, which states that the net magnetic flux through any closed surface is always zero. Physically, this means that magnetic field lines never begin or end at a point source; instead, they always form continuous, closed loops. To calculate the field generated by a steady current, two primary tools are used. The Biot-Savart Law describes the infinitesimal contribution of every segment of a wire to the total field, establishing that the field is proportional to the current intensity and inversely proportional to the square of the distance from the source. On the other hand, Ampere's Law relates the circulation of the $bold(B)$ field along a closed path to the total current enclosed by that path. This is particularly useful for solving systems with high symmetry, such as infinite straight wires or solenoids. The derivation of the Biot-Savart Law is fundamental to magnetostatics, as it provides the mathematical link between a steady electric current and the magnetic field it creates. It is often considered the magnetic analogue to Coulomb's Law in electrostatics. To find the total magnetic field $bold(B)$ at point P, we must sum (integrate) the contributions from all infinitesimal segments along the entire path of the wire $gamma$.
$
  bold(B)(bold(r)) = mu_0/(4 pi) integral_gamma (I dif bold(tilde(l)) times bold(e)_r)/r^2 = mu_0/(4 pi) integral_gamma (I dif bold(tilde(l)) times (bold(r) - bold(tilde(r))))/(|bold(r) - bold(tilde(r))|^3)
$
Using the same approximation, of filiform conductor
$
  bold(B)(bold(r)) = mu_0/(4 pi) integral_Omega (bold(J)(bold(tilde(r))) times (bold(r) - bold(tilde(r))))/(|bold(r) - bold(tilde(r))|^3) dif tilde(tau)
$
The cross product $bold(tilde(l)) times bold(e)_r$ dictates that the magnetic field is always perpendicular to both the current direction and the radius vector. This leads to the Right-Hand Rule: if you point your thumb in the direction of the current, your fingers curl in the direction of the magnetic field lines.

== Gauss's law for magnetism
Gauss's law for magnetism is a fundamental principle that describes the structure and continuity of magnetic field lines. While Gauss's law for electricity relates the electric field to the presence of electric charges, the magnetic version states that the total magnetic flux through any closed surface is always zero. This implies that there is no such thing as a magnetic charge or a magnetic monopole. Every magnetic field line that enters a given volume must eventually exit it, ensuring that the net flux is null. Mathematically, this is expressed in two ways. The integral form states that the surface integral of the magnetic field B over a closed surface S is zero. The differential or local form, which is one of Maxwell's equations, states that the divergence of the magnetic field is zero at every point in space. This local definition emphasizes that magnetic fields do not have point sources or sinks. In contrast to an electric field where lines can originate on a positive charge and end on a negative one, magnetic field lines always form continuous, closed loops.
$
  div bold(B) = 0 
$
The most significant physical consequence of this law is the observation that North and South poles always exist in pairs. If you attempt to isolate a pole by breaking a magnet, the result is simply two smaller magnets, each possessing both a North and a South pole. This property is a direct manifestation of the fact that the divergence of the field is zero. Furthermore, this law allows physicists to define the magnetic vector potential A. Since the divergence of the curl of any vector field is always zero, and the divergence of $bold(B)$ is zero, we can represent the magnetic field as the curl of this potential. Because magnetic fields are created by moving charges or currents rather than static poles, the field lines wrap around the current in a circular or looped fashion. Even in permanent magnets, the field is produced by the microscopic motion and spin of electrons, which act as tiny current loops. Gauss's law for magnetism ensures that these loops are always unbroken and that the magnetic flux remains conserved throughout space. The concept of the magnetic vector potential A arises directly from the mathematical properties of the magnetic field $bold(B)$ we just discussed. In vector calculus, there is a fundamental identity stating that the divergence of the curl of any vector field is always zero. Since Gauss's law for magnetism dictates that the divergence of $bold(B)$ is zero, we can conclude that B must be the curl of some other vector field. The fact that $div bold(B) = 0 $ is the mathematical reason why we can define a magnetic vector potential $bold(A)$. In vector calculus, if the divergence of a field is zero, that field can be expressed as the curl of another vector field:
$
  bold(B) = curl bold(A)
$
This relationship is used extensively in advanced electromagnetism to simplify the calculation of magnetic fields from complex current distributions. While the electric potential $V$ is a scalar field related to the work required to move a charge in an electric field, the vector potential $bold(A)$ is a vector field related to the "momentum" of the electromagnetic field. In many ways, $bold(A)$ is for magnetism what $V$ is for electricity.

== Ampere's Law
To prove Ampere's law rigorously without formatting, we start from the Biot-Savart law, which defines the magnetic field $bold(B)$ at a point $bold(r)$ as the integral of the current density $bold(J)$  at a source point $bold(tilde(r))$ divided by the square of the distance between them. Mathematically, this is expressed as $bold(B)$ equals mu zero over four pi times the integral of  $bold(J)$ cross the separation vector over the distance cubed. We use the vector identity that the separation vector divided by its magnitude cubed is the negative gradient of one over the distance. By substituting this into the Biot-Savart expression and using the vector identity for the curl of a scalar times a vector, we can rewrite the magnetic field $bold(B)$  as the curl of a vector potential $bold(A)$. This vector potential $bold(A)$ is defined as mu zero over four pi times the integral of $bold(J)$ divided by the distance.
$
  bold(B)(bold(r)) = - mu_0/(4 pi) integral_Omega bold(J)(bold(tilde(r))) times grad 1/(|bold(r) - bold(tilde(r))|) dif tilde(tau) = 
$
with indices 
$
  B_k = - mu_0/(4 pi) integral_Omega epsilon_(i j k) J_i partial_j 1/(|bold(r) - bold(tilde(r))|) dif tilde(tau) = - epsilon_(i j k) partial_j mu_0/(4 pi) integral_Omega J_i/(|bold(r) - bold(tilde(r))|) dif tilde(tau) = epsilon_(j i k) partial_j=- A_i
$
keep in min that the gradient is with respect to $bold(r)$, therefore it is possbile to define the potential vector
$
  bold(B)(bold(r)) = curl [mu_0/(4 pi) integral_Omega (bold(J)(bold(tilde(r))))/(|bold(r) - bold(tilde(r))|) dif tilde(tau)]
$
$
  bold(A) = mu_0/(4 pi) integral_Omega (bold(J)(bold(tilde(r))))/(|bold(r) - bold(tilde(r))|) dif tilde(tau)
$
Let's compute $curl curl bold(A)$
$
  epsilon_(i j k) partial_i (curl bold(A))_j = epsilon_(i j k) epsilon_(l m j)partial_i (partial_l A_m) = - epsilon_(i k j) epsilon_(l m j) partial^2_(i l) A_m = (delta_(i m)delta_(k l) - delta_(i l)delta_(k m)) partial^2_(i l) A_m =\ 
  = partial^2_(i k) A_i - partial^2_(i i) A_k => grad(div bold(A)) - laplacian bold(A)
$
To find the circulation (the differential form of Ampère's Law), we take the curl of $bold(B)$:
$
  curl bold(B) = curl curl bold(A) = grad(div bold(A)) - laplacian bold(A) = - laplacian bold(A)
$
The term $-laplacian bold(A)$ is the Laplacian acting on the integral of J. Using the property of the Dirac delta function where $laplacian (1/r)=-4 pi delta(r)$, we get:
$
  curl bold(B) =  -mu_0/(4 pi) integral_Omega laplacian (bold(J)(bold(tilde(r))))/(|bold(r) - bold(tilde(r))|) dif tilde(tau) = -mu_0/(4 pi) integral_Omega -4 pi delta(|bold(r) - bold(tilde(r))|) bold(J)(bold(tilde(r))) dif tilde(tau) = mu_0 bold(J)(bold(r))
$
To transition to the integral form commonly used in physics problems, we apply Stokes' theorem to the differential form. We integrate the curl of $bold(B)$ over an open surface $Sigma$ that is bounded by a closed path $gamma$. According to Stokes' theorem, the surface integral of the curl of a vector field is equal to the line integral of that field along the boundary of the surface. On the other side of the equation, the surface integral of the current density $bold(J)$ represents the total current $I$ that passes through the area enclosed by the loop. Therefore, the line integral of $bold(B)$ around the closed path $gamma$ is equal to mu zero times the enclosed current $I$. This confirms that the circulation of the magnetic field is directly proportional to the net current flowing through the loop, completing the proof.
$
  integral_(partial Sigma) bold(B) dot  dd(bold(l)) = integral_Sigma mu_0 bold(J)(bold(r)) dot bold(n) dd(S) = mu_0 I_"enc"
$

== Magnetic Dipole 
A magnetic dipole is the most fundamental source of a magnetic field, representing a pair of opposite magnetic poles separated by a small distance. In nature, because magnetic monopoles do not exist, all magnetic sources, from a simple bar magnet to the planet Earth and even individual subatomic particles, behave as dipoles. A magnetic dipole is characterized by its magnetic dipole moment, a vector quantity that points from the South pole to the North pole. The simplest physical realization of a magnetic dipole is a small, closed loop of current. For a loop with area A carrying a steady current I, the magnitude of the magnetic dipole moment m is equal to the product of the current and the area. The direction of this vector is determined by the right-hand rule: if you curl your fingers in the direction of the current, your thumb points in the direction of the dipole moment. At distances much larger than the dimensions of the loop, the magnetic field produced by this current loop is identical to the field produced by a pair of magnetic charges. Gemini To explain the magnetic dipole mathematically, we look at the limit of a current loop where the area becomes very small while the product of current and area remains constant. This allows us to describe the field far away from the source. 
$
  bold(A)(bold(r)) = mu_0/(4 pi)(I bold(S) times bold(r))/(r^3) = mu_0/(4 pi)(bold(m) times bold(r))/(r^3)
$
On a microscopic level, materials exhibit magnetic properties because of the magnetic dipoles of their constituent atoms. These atomic dipoles arise from two primary sources: the orbital motion of electrons around the nucleus, which acts like a tiny current loop, and the intrinsic spin of the electrons themselves. The alignment or random orientation of these countless microscopic dipoles determines whether a material is diamagnetic, paramagnetic, or ferromagnetic. If we compute the curl of $bold(A)$ we obtain:
$
  bold(B)(bold(r)) = (3(bold(m) dot bold(r)) bold(r)  - r^2 bold(m))/(4 pi #e_0 r^5)
$


The torque $bold(M)$ on a closed loop $gamma$ carrying a steady current $I$ in a uniform magnetic field $bold(B)$ is calculated by integrating the moment of the force along the curve:

$ bold(M)= integral.cont_gamma bold(r) times (I d bold(l) times bold(B)) $

By applying the vector triple product identity $bold(a) times (bold(b) times bold(c)) = bold(b)(bold(a) dot bold(c)) - bold(c)(bold(a) dot bold(b))$, we can expand the expression:

$ bold(M) = I [ integral.cont_gamma (bold(r) dot bold(B)) d bold(l) - integral.cont_gamma bold(B) (bold(r) dot d bold(l)) ] $

To evaluate these integrals: in the second term, the integral of an exact differential around a closed curve $gamma$ is zero:
$ integral.cont_gamma bold(B) (bold(r) dot d bold(l)) = 0 $
The first term is solved using the identity for the line integral of a position-dependent scalar product. For any constant vector $bold(B)$ and a surface $Sigma$ bounded by $gamma$:
$ integral.cont_gamma (bold(r) dot bold(B)) d bold(l) = bold(S) times bold(B) $
where 
$
  bold(S) = 1/2 integral.cont_gamma bold(r) times d bold(l)
$ 
is the vector area of the loop. Substituting these results back into the original equation:

$ bold(M) = I (bold(S) times bold(B)) = (I bold(S)) times bold(B) $

This gives us the final form using the magnetic dipole moment $bold(m) = I bold(S)$:

$ bold(M) = bold(m) times bold(B) $

Regarding the potential energy $U = -bold(m) dot bold(B)$, the ambiguity of using a potential in a non-conservative field ($curl bold(B) eq.not 0$) is resolved by recognizing that the energy is defined relative to the rotational degree of freedom. Since the torque is a function of the angle $theta$ and is periodic, the work done during rotation is path-independent in the angular space. The energy labeled as "magnetic" is actually the work performed by the electrical source maintaining the current against the back-EMF generated as the loop $gamma$ moves through the field.






























#pagebreak()
#pagebreak()
= Elecromagnetic induction
The transition from the static paradigm to the world of electromagnetic induction represents one of the most profound shifts in the history of physical thought. Up to this point in our study, we have operated under the assumption of independence. Electric fields were the domain of stationary charges, and magnetic fields were the domain of steady, unchanging currents. In this static world, the two fields existed in parallel but rarely intersected in a way that suggested they were two sides of the same coin. The electric field was strictly conservative, meaning its curl was zero and the work done moving a charge around a closed loop was always null. The magnetic field, while possessing its own complexities, remained tied to the physical distribution of moving charges without any feedback loop into the electrical realm. Everything changed with the experimental observations of Michael Faraday and Joseph Henry, which shattered the static limit. They discovered that a magnetic field, when changing in time, acts as a source for an electric field. This revelation was not merely an addition to our list of laws but a total restructuring of the electromagnetic worldview. It introduced the concept of flux linkage as a dynamic variable. We no longer care simply about the presence of a magnetic field at a point; we care about the history of that field and how it evolves. If the magnetic flux threading through a surface changes, whether because the field itself is strengthening, the area of the surface is expanding, or the orientation of the loop is rotating, a physical response is triggered in the surrounding space. This response is the induced electromotive force Qualitatively, induction tells us that the universe possesses a form of electromagnetic inertia. This is most famously encapsulated in Lenz's law, which states that any induced effect will naturally oppose the change that created it. If you try to increase the magnetic flux through a conductor, the conductor will generate a current whose own magnetic field pushes back against that increase. It is as if space itself resists a change in its magnetic state, much like a mass resists a change in its velocity. This feedback mechanism is what allows for the conservation of energy in electromagnetic systems; without this opposition, we would find ourselves in a universe where energy could be created from nothing through runaway induction. Perhaps the most significant consequence of this shift is the death of the conservative electric field. In the static paradigm, we could always define a unique scalar potential because the line integral of the electric field around a closed path was zero. Induction changes the geometry of the field itself. The induced electric field does not start on a positive charge and end on a negative one; instead, it forms continuous, closed loops that curl around the changing magnetic flux. This means the field is now "vortex-like" rather than "source-like." In this new regime, the concept of a unique voltage between two points becomes path-dependent if there is changing flux between them. We have officially moved beyond the world of equilibrium and into the era of electrodynamics, where the interplay between time and space defines the very nature of force and energy.

== Faraday's Law
The transition from magnetostatics to electrodynamics is formally defined by the breakdown of the static assumption that electric and magnetic fields are independent. In this chapter, we derive Faraday's Law, which serves as the analytical bridge between these two realms. While we previously treated the electric field as a conservative vector field derived from a scalar potential, the introduction of time-varying magnetic flux reveals a non-conservative component of the electric field that is vortex-like in nature. The following derivation provides a rigorous mathematical proof that the electromotive force, defined as the work done per unit charge around a closed path, is precisely equal to the negative rate of change of the magnetic flux. This proof is particularly significant because it unifies two distinct physical mechanisms: the transformer EMF, arising from a change in the field itself, and the motional EMF, arising from the physical translation or deformation of the conductor within that field.
Consider a closed loop $gamma(t)$ that bounds a surface $Sigma(t)$. If the loop moves with a velocity $bold(v)$ through a time-varying magnetic field $bold(B)(bold(r), t)$, the total electromotive force $xi$ is defined by the line integral of the Lorentz force per unit charge:
$ 
  xi = integral.cont_(gamma(t)) (bold(E) + bold(v) times bold(B)) dot dd(bold(l)) 
$

The magnetic flux $Phi_B$ through the surface $Sigma(t)$ is given by:

$ 
  Phi(bold(B),Sigma) = integral.cont_(Sigma(t)) bold(B)(bold(r), t) dot bold(n) dd(S) 
$

To find the time derivative of this flux, we apply the Leibniz integral rule for a moving surface, which accounts for both the intrinsic change in the field and the area swept out by the moving boundary:

$ 
  dv(,t) Phi(bold(B),Sigma) = dv(,t)integral.cont_(Sigma(t)) bold(B) dot bold(n) dd(S)  = integral.cont_(Sigma(t)) pdv(bold(B),t) dot bold(n) dd(S) + integral.cont_(gamma(t)) bold(B) dot (bold(v) times dd(bold(l)))=\
  = integral.cont_(Sigma(t)) pdv(bold(B),t) dot bold(n) dd(S) - integral.cont_(gamma(t)) (bold(v) times bold(B)) dot dd(bold(l))
$
There is no classical “derivation” of the Maxwell-Faraday equation because, within classical electrodynamics, it is one of the fundamental field equations. A derivation would require reducing it to more primitive principles inside the same theoretical framework. But classical electromagnetism is built precisely by postulating a closed set of equations  Maxwell's equations  that summarize experimental facts. The Maxwell-Faraday equation is the local differential expression of electromagnetic induction, originally discovered experimentally by Michael Faraday. When James Clerk Maxwell formulated his theory, he elevated this empirical law to the status of a field equation. Therefore, inside classical theory, it is not proved; it is assumed as a foundational law that is validated by experiment. Any apparent “derivation” in textbooks typically starts from the integral form of Faraday's law and uses Stokes' theorem to obtain the differential form. However, that procedure does not truly derive the law from deeper classical principles  it merely rewrites the same empirical content in local form.
 A non-classical justification does exist in more fundamental theories. In relativistic field theory, the Maxwell-Faraday equation arises from the geometric structure of the electromagnetic field tensor. If the electromagnetic field is defined in terms of a four-potential, the homogeneous Maxwell equations including the Maxwell-Faraday law  follow identically from the antisymmetric definition of the field tensor and from spacetime geometry. In modern language, they are consequences of the Bianchi identity applied to the field strength tensor. In that sense, within relativistic gauge field theory, the equation is no longer an independent empirical postulate but a geometric identity that follows from the structure of the theory itself.
By invoking the Maxwell-Faraday equation
$
  curl bold(E) = - pdv(bold(B),t) 
$
and applying Stokes' Theorem, we can relate the surface integral of the field change to the circulation of the electric field:

$ 
  dv(,t) Phi(bold(B),Sigma) = - integral.cont_(Sigma(t)) curl bold(E) dot bold(n) dd(S) - integral.cont_(gamma(t)) (bold(v) times bold(B)) dot dd(bold(l))
$
Substituting this back into our flux derivative expression and 
$ 
  dv(,t) Phi(bold(B),Sigma) = - integral.cont_(gamma(t)) bold(E) dot d bold(l) - integral.cont_(gamma(t)) (bold(v) times bold(B)) dot d bold(l) 
$
Recognizing the terms we arrive at the final analytical form of Faraday's Law:
$
  xi = - dv(,t) Phi(bold(B),Sigma)
$
While Faraday discovered the magnitude of the induced electromotive force, he did not initially provide a general rule for its direction. In 1834, Lenz formulated the principle that the direction of an induced current is always such that it creates a magnetic field that opposes the change in magnetic flux that produced it. This is not merely a convention of signs; it is a fundamental requirement of the law of conservation of energy. If the sign were positive, an initial increase in flux would induce a current that adds even more flux, leading to an infinite feedback loop where energy is created from nothing. Thus, the minus sign ensures that the system acts with a form of electromagnetic inertia, resisting any shift in its current state. The physical meaning of this opposition can be seen in the mechanical work required to move a magnet toward a coil. As you push the North pole of a magnet toward a loop, Lenz's law dictates that the loop will develop a current that generates its own North pole facing the incoming magnet. This creates a repulsive force, meaning you must perform mechanical work to overcome the magnetic repulsion. This mechanical work is precisely what is converted into the electrical energy of the induced current. Without this "struggle" or opposition, there would be no energy transfer, and the fundamental symmetries of physics would be violated. Foucault currents, commonly known as eddy currents, are a direct application of this principle within bulk pieces of conductive material rather than thin wires. When a solid conductor moves through a non-uniform magnetic field, or is subjected to a changing magnetic flux, the induced electric field creates swirling loops of current within the body of the metal itself. These internal currents follow Lenz's law, creating their own magnetic fields that oppose the motion of the conductor through the external field. This results in a powerful braking effect known as electromagnetic damping. While eddy currents are essential for technologies like induction cooktops and magnetic brakes in trains, they are often a source of significant energy loss in electrical engineering. In transformers and motors, these currents circulate through the iron cores, converting useful electrical energy into wasted heat through Joule heating. To minimize these losses, engineers use laminated cores,thin sheets of metal separated by insulating layers, which break the large paths of the Foucault currents into much smaller, less powerful loops. This structural change keeps the magnetic properties of the core intact while drastically reducing the parasitic energy dissipation.\

== Inductance
The concept of inductance represents the electrical equivalent of inertia in a physical system. When we established Faraday's Law, we focused on how an external magnetic field induces an electromotive force in a circuit. However, a circuit also produces its own magnetic field whenever a current flows through it. If that current changes over time, the circuit's own magnetic field also changes, which in turn induces an electromotive force back into the very same circuit. This internal feedback mechanism is what we define as inductance. Inductance is the proportionality constant between the current $I$ and the resulting magnetic flux $Phi(bold(B))$. For a single closed loop, the self-inductance $L$ is defined as:
$ 
  L = Phi(bold(B))/I 
$
Applying Faraday's Law, the induced back-EMF $xi$ is given by the time derivative of this flux:
$ 
  xi = - dv(, t)(L I) = - L dv(I, t)
$
which is valid only if $dv(L, t) = 0$ .The physical consequence of inductance is a phenomenon called back-EMF. According to Lenz's Law, this induced voltage will always act to oppose the change in current. If you try to increase the current, the inductor generates a voltage that pushes back against the power source. If you try to decrease the current, the inductor generates a voltage that tries to keep the charges moving. This is why current in an inductive circuit cannot change instantaneously; it requires a finite amount of time to build up or decay, much like a heavy flywheel requires time to speed up or slow down when a force is applied. Beyond a single loop, we must also consider mutual inductance $bold(M)$. This occurs when the magnetic field produced by one circuit passes through the area of a second, nearby circuit. A change in current in the first loop induces an EMF in the second. This principle is the operational foundation of the transformer, allowing for the transfer of energy between isolated circuits through the medium of the magnetic field. Whether mutual or self-directed, inductance is the property that governs how electromagnetic systems store energy in their fields and resist changes in their dynamic state. For a system of $N$ circuits, the magnetic flux $Phi_i$ through the $i$-th circuit is a linear combination of all currents $I_j$ in the system:

$ Phi_i =  L_(i j) I_j $

The coefficients $L_(i j)$ form the *induction tensor* (or inductance matrix). This matrix is symmetric ($L_(i j) = L_(j i)$) due to the reciprocity theorem. The total magnetic energy $U_B$ of the system is given by:

$ U_B = 1/2  I_i Phi_i = 1/2 L_(i j) I_i I_j $

In the continuous limit, this discrete energy sum can be expressed as an integral over all space in terms of the magnetic field $bold(B)$ and the magnetic permeability $mu_0$:

$ U_B = 1/(2 mu_0) integral_V |bold(B)|^2 d V $

The *magnetic energy density* $u_B$ is therefore defined at every point in the field as:

$ 
  u_B = (|bold(B)|^2)/ (2 mu_0) 
$
== Ampere-Maxwell's equation 
The transition to the final form of electromagnetic theory requires us to address a deep inconsistency in the way we originally understood the generation of magnetic fields. In the static world, Ampere's Law told us that magnetic fields are the exclusive result of moving charges, or electric currents. While this worked perfectly for steady, continuous wires, it failed to account for systems where the flow of charge is interrupted, such as the gap between the plates of a capacitor. If you imagine a surface passing through the wire, you see a current; if you imagine a surface passing through the gap, you see no current. According to the old law, the magnetic field would exist in one case and vanish in the other, even though they describe the same physical loop. James Clerk Maxwell realized that this discrepancy was a violation of the principle of charge conservation. If charge is building up on one plate and leaving the other, the electric field between those plates must be changing. He proposed that this changing electric field itself acts as a source of magnetism, even in the total absence of physical charges moving through that space. He termed this phenomenon the displacement current. It is not a current in the sense of electrons flowing through a conductor, but rather a "displacement" in the state of the vacuum or the medium that mimics the magnetic effects of a real current. This qualitative leap was revolutionary because it completed the symmetry of the universe. Just as Faraday discovered that a changing magnetic field produces an electric field, Maxwell showed that a changing electric field produces a magnetic field. This feedback loop is what allows electromagnetic fields to detach from their sources and propagate through empty space. Without the displacement current, the equations of electromagnetism would describe static or slowly varying systems, but they would never be able to predict the existence of light. By adding this term, Maxwell unified electricity, magnetism, and optics into a single, cohesive field theory.
The original Ampère's Law, $curl bold(B) = mu_0 bold(J)$, is inconsistent with the conservation of charge for time-varying fields. We prove the necessary correction by invoking the continuity equation:

$ nabla dot bold(J) + pdv(rho,t) = 0 $

Taking the divergence of the curl of $bold(B)$ must yield zero. Using Gauss's Law ($rho = epsilon_0 nabla dot bold(E)$), we find:

$ nabla dot (curl bold(B)) = mu_0 nabla dot (bold(J) + epsilon_0 pdv(bold(E),t)) = 0 $

This leads to the *displacement current density* $bold(J)_d = epsilon_0 pdv(bold(E),t)$. The complete differential form of the law is:

$ curl bold(B) = mu_0 bold(J) + mu_0 epsilon_0 pdv(bold(E),t) $

In integral form, this relates the circulation of the magnetic field around a loop $gamma$ to the total current and the rate of change of electric flux $Phi(bold(E), Sigma)$ through the surface $S$:

$ integral.cont_gamma bold(B) dot dd(bold(l)) = mu_0 I_(e n c) + mu_0 epsilon_0 dv(Phi(bold(E), Sigma),t) $







































#pagebreak()
#pagebreak()
= Magnetic materials 
To understand magnetic materials, we must move from the macroscopic world of wires and currents into the microscopic world of the atom. In our previous discussions, we assumed that magnetic fields were generated only by the flow of free charges. However, matter itself is composed of atoms that act as tiny, persistent current loops. This internal magnetism arises from two primary sources: the orbital motion of electrons around the nucleus and the intrinsic quantum property known as spin. In a typical substance, these billions of atomic magnets are oriented randomly, causing their effects to cancel out at a macroscopic level. But when a material is placed in an external magnetic field, these microscopic moments respond, either aligning with the field or resisting it. We classify materials into three main categories based on this microscopic response. Diamagnetism is a weak effect present in all matter, where the applied field slightly alters the orbital motion of electrons to create a tiny opposing field; this is essentially Lenz's law acting at the atomic scale. Paramagnetism occurs in atoms with a net magnetic moment that, while normally randomized by thermal energy, tends to align with an external field, slightly strengthening it. Ferromagnetism is the most dramatic form, found in materials like iron, where quantum mechanical forces cause large groups of atoms to lock their magnetic moments in a single direction, forming what we call magnetic domains. These domains can remain aligned even after the external field is removed, which is how we create permanent magnets. To describe these effects mathematically, we introduce a vector field called magnetization, denoted as $bold(M)$. This represents the net magnetic dipole moment per unit volume of the material. When a material is magnetized, it is as if a hidden current is flowing within it. These are called bound currents because the charges are not free to move through the material like they are in a wire; they are tied to their respective atoms. We distinguish between bound volume currents, which occur when the magnetization is non-uniform, and bound surface currents, which appear at the edges of the material where the atomic loops are not cancelled out by neighboring loops. Because these bound currents generate their own magnetic fields, the total magnetic field $bold(B)$ is the sum of the fields from our external wires and the fields from the material itself. To make calculations manageable, physicists use an auxiliary field called the H-field, or magnetic field intensity. This field allows us to focus on the free currents we can control, while the material's complex internal response is captured by the relationship between $bold(B)$, $bold(H)$, and $bold(M)$. This framework is essential for engineering devices like transformers, motors, and magnetic storage, where the choice of material dictates how efficiently the system can store and channel magnetic energy.

== Magnetization
At the heart of any magnetic material lies a vast collection of tiny, microscopic magnetic dipoles. These dipoles are primarily the result of electron spin and their orbital motion around the nucleus. Magnetization is the process of aligning these dipoles so that their individual magnetic fields no longer cancel each other out, but instead sum up to create a macroscopic magnetic effect. The magnetization $bold(M)$ is defined as the limit of the magnetic dipole moment $bold(m)$ per unit volume $v$:
$ 
  bold(M) = lim_(v arrow 0) bold(m)/v 
$
To make sense of how materials respond to magnetic fields, we conceptually split the total current into two distinct types. 
- *Free Currents* $bold(J)_f$ are the ones we can actually touch and measure. They are the macroscopic currents flowing through wires, circuits, or plasma. If you have a battery and a copper coil, the current you're pumping through it is the free current. We call it "free" because the charges are not bound to any specific atom; they are free to move through the conductor under our control.
- *Bound Currents* $bold(J)_b$, on the other hand, are internal to the material itself. On a microscopic level, electrons are spinning and orbiting around nuclei. Each of these tiny loops acts like a miniature bar magnet. In most materials, these loops are oriented randomly and cancel each other out. However, when you apply an external magnetic field, these "atomic currents" can align. This alignment creates a net current flow on the surface or within the bulk of the material that we didn't put there ourselves. We call these "bound" because you cannot simply clip a lead to an atom and "drain" its orbital current away.
The total current density $bold(J)$ is the sum of the free and bound components:
$ 
  bold(J) = bold(J)_f + bold(J)_b 
$
The bound current is not an independent variable; it is a macroscopic manifestation of the material's internal alignment, or magnetization $bold(M)$. Specifically, the bound current density is defined as the curl of the magnetization:

$ 
  bold(J)_b = curl bold(M) 
$

By substituting this relationship back into our Ampèreian expression, we can mathematically isolate the terms that are subject to the curl operator. This allows us to group the "material response" (represented by $bold(M)$) with the "total field" (represented by $bold(M)$), effectively moving all internal material properties to the left side of the equation:

$ 
  curl bold(B) = mu_0 (bold(J)_f + curl bold(M)) quad => quad curl (bold(B) / mu_0 - bold(M)) = bold(J)_f 
$

This grouping suggests the utility of a new vector field, which we define as the auxiliary magnetic field $bold(H)$. By defining $bold(H)$ such that:
$ 
  bold(H) = bold(B) / mu_0 - bold(M) 
$
we arrive at a strikingly simple and powerful version of Ampère's Law:
$ 
  curl bold(H) = bold(J)_f 
$
In a vacuum, the relationship is a simple linear scaling by the permeability of free space. However, once a material is present, the magnetization $bold(M)$  isn't just a random value it is usually a response to the applied field $bold(H)$. This means that the material's internal dipoles align themselves based on the strength of the field you are driving through it. For many common materials, especially those that are "linear" and "isotropic," we can assume that the magnetization is directly proportional to the auxiliary field. This proportionality is captured by the magnetic susceptibility, a dimensionless constant that tells us how "easily" a material becomes magnetized. For many common materials, excluding ferromagnets like iron, the magnetization $bold(M)$ is directly proportional to the magnetic field intensity $bold(H)$. We define this proportionality using the magnetic susceptibility ($chi_m$), a dimensionless factor that represents the material's "willingness" to be magnetized:

$ 
  bold(M) = chi_m bold(H)
$
When we plug this proportional relationship back into our definition of $bold(H)$, we arrive at the constitutive relation. This equation essentially "absorbs" the material's complex atomic behavior into a single parameter called the permeability. Instead of tracking the magnetization $bold(M)$ as a separate entity, we can simply say that $bold(B)$ is equal to the permeability of the material times $bold(H)$.
$ 
  bold(B) = mu_0(bold(H) + bold(M)) = mu_0(1 + chi_m)bold(H)
$
we consolidate these constants into the absolute permeability of the material, denoted as $mu$. This gives us the standard constitutive relation used in most macroscopic electromagnetics:
$ 
  bold(B) = mu bold(M) 
$
where $mu = mu_0 (1 + chi_m)$. In practice, we often use the relative permeability $mu_r = 1 + chi_m$, which tells us how many times more "conductive" to magnetic flux a material is compared to a vacuum. Through this abstraction, the trillions of individual bound currents within the atoms are hidden behind a single constant. This allows us to predict the "magnetic reality" $bold(B)$ in a motor or transformer by knowing only the "driving force" $bold(H)$ generated by our external wiring.
#table(
  columns: (auto, auto, auto, auto),
  inset: 6pt,
  align: horizon,
  [*Material Type*], [*$chi_m$ Range*], [*$mu_r$ Range*], [*Physical Meaning*],
  [Vacuum], [0], [1], [No magnetization possible.],
  [Diamagnets], [$-10^(-5)$ to $-10^(-9)$], [$~ 0.99999$], [Weakly opposes field (Lenz's Law at atomic scale).],
  [Paramagnets], [$10^(-5)$ to $10^(-3)$], [$~ 1.00001$], [Weakly reinforces field via dipole alignment.],
  [Ferromagnets], [$10^2$ to $10^6$], [$> 100$], [Strong spontaneous alignment in magnetic domains.],
  [Superconductors], [-1], [0], [Perfect diamagnetism (Meissner effect).],
)
== Maxwell's equations in medium
In a vacuum, Maxwell's equations deal with total charge and total current. However, in a medium, it is nearly impossible to track every single electron. Instead, we split the sources into *free* charges/currents (those we can control, like in a wire) and *bound* charges/currents (those inherent to the material's atoms):

$
  bold(D) = epsilon_0 bold(E) + bold(P) 
$

$ 
  bold(H) = frac(1, mu_0) bold(B) - bold(M) 
$

By substituting these definitions into the vacuum equations, we arrive at the form used for engineering and materials science. These equations now only depend on the free charge density $rho_f$ and the free current density $bold(J)_f$:

$ div bold(D) = rho_f quad quad div bold(B) = 0 $
$ curl bold(E) = -pdv(bold(B), t) quad quad curl bold(H) = bold(J)_f + pdv(bold(D), t) $
== Magnetic Hysteresis and the Magnetization Cycle

While diamagnetic and paramagnetic materials exhibit a linear, single-valued, and completely reversible relationship between the applied magnetic field $bold(H)$ and the induced magnetization $bold(M)$, ferromagnetic materials behave in a radically different and far more complex manner. In ferromagnets, the functional dependence of $bold(M)$ on $bold(H)$ is highly non-linear and inherently historical. The magnetization of a ferromagnetic sample at any given moment depends not merely on the instantaneous value of the external field, but on the entire previous magnetic history of the material. This phenomenon of "magnetic memory" is known as *hysteresis*, a term derived from the Greek word meaning "to lag behind."
To rigorously understand the macroscopic hysteresis cycle, we must first examine the microscopic architecture of a ferromagnet. Below a critical temperature (the Curie temperature), the strong quantum mechanical exchange interaction forces neighboring atomic magnetic dipole moments to align parallel to one another. However, to minimize the overall magnetostatic energy of the macroscopic sample, the material spontaneously divides itself into countless microscopic regions known as *Weiss domains*. 
Within each individual domain, the local magnetization is completely saturated; that is, all dipoles are perfectly aligned. However, the direction of magnetization varies from one domain to the next. These domains are separated by transition boundaries called *domain walls* (or Bloch walls), across which the orientation of the dipoles gradually rotates.
In a completely unmagnetized, pristine macroscopic sample, the various domains are randomly oriented. The vector sum of their individual magnetic moments perfectly cancels out, resulting in a net macroscopic magnetization of exactly zero ($bold(M) = 0$ when $bold(H) = 0$).



Let us now imagine applying a gradually increasing external magnetic field $bold(H)$ in a positive direction. The material begins to magnetize, tracing what is known as the *virgin magnetization curve*. Microscopically, this process occurs in two distinct, sequential phases:

1.  *Domain Wall Displacement:* Initially, the domains whose intrinsic magnetization vectors happen to be favorably aligned (or partially aligned) with the external field $bold(H)$ begin to grow in volume. They do so at the expense of less favorably aligned domains through the physical displacement of the domain boundaries. If one were to amplify the magnetic induction during this phase, one would detect a series of discrete, crackling noises, the *Barkhausen effect*, proving that domain wall motion is not perfectly continuous, but rather proceeds in sudden, microscopic jumps as walls break free from crystal defects.
2.  *Domain Rotation:* As the external field $bold(H)$ becomes sufficiently strong, wall motion is completed. The remaining domains, which are now fewer but much larger, are forced to physically rotate their overall magnetization vectors away from their preferred crystallographic axes to align perfectly and rigidly with the applied field. 

Eventually, the material reaches a state of maximum order: all magnetic dipoles throughout the entire volume are perfectly aligned with $bold(H)$. At this theoretical and practical limit, any further increase in the external field yields absolutely no additional internal magnetization. The material has reached *magnetic saturation*, denoted by the saturation magnetization vector $bold(M)_s$.



The true, irreversible nature of hysteresis vividly reveals itself when we begin to reduce the external field back toward zero. Instead of retracing the virgin curve, the magnetization decreases at a significantly slower rate. 
Why does this occur? As the domain walls attempt to return to their original, demagnetized configuration, they become "pinned" or trapped by impurities, dislocations, grain boundaries, and other microscopic imperfections within the crystal lattice. This internal structural friction prevents a fully elastic return to the initial state.
Consequently, when the external driving field is completely removed ($bold(H) = 0$), the material retains a substantial, measurable amount of macroscopic magnetization. This residual magnetic state is called the *remanent magnetization* (or simply *remanence*), denoted by $M_r$. This specific point on the hysteresis loop is the fundamental physical mechanism that allows for the existence of permanent magnets and non-volatile magnetic data storage.
To force the overall macroscopic magnetization back to exactly zero, we must actively work against this internal memory. We must apply a reverse magnetic field in the opposite (negative) direction. The precise magnitude of this opposing field required to completely demagnetize the sample ($bold(M) = 0$) is defined as the *coercive field* or *coercivity*, denoted by $H_c$. 



If we continue to increase the negative applied field beyond $-H_c$, the material will eventually reach magnetic saturation in the opposite, negative direction ($-bold(M)_s$). By reversing the process once more, gradually reducing the negative field back to zero and then increasing it in the positive direction, the state of the material traces out the lower branch of the symmetrical curve. It passes sequentially through the negative remanence ($-M_r$) and the positive coercive field ($+H_c$), until it finally closes the loop at the initial positive saturation point ($+bold(M)_s$).
This entire closed, symmetrical trajectory plotted in the $H$-$M$ (or more commonly in electrical engineering, the $H$-$B$) plane constitutes the *hysteresis loop*.

From a thermodynamic standpoint, the fact that the ascending and descending curves do not coincide indicates that the magnetization process is non-conservative. Work is performed by the external magnetic field to move the domain walls against internal lattice friction. During one complete cycle, this work is irrevocably dissipated into the environment as thermal energy (heat). Analytically, the volumetric energy $W$ dissipated per unit volume during a single complete hysteresis cycle is exactly equal to the area enclosed within the $H$-$B$ loop:

$ W = integral bold(H) dot dd(bold(B)) $

The geometric shape of the hysteresis loop, specifically its enclosed area, the height of the remanence $M_r$, and the width of the coercivity $H_c$, dictates the technological application of the ferromagnetic material: *Hard Magnetic Materials:* Materials with a very broad hysteresis loop, characterized by high remanence and exceptionally high coercivity, are magnetically "hard." They are extremely difficult to demagnetize once saturated. These materials (such as Neodymium-Iron-Boron alloys or Alnico) are engineered to be used as powerful permanent magnets.
*Soft Magnetic Materials:* Conversely, materials with a very narrow, tall hysteresis loop exhibit low coercivity and minimal enclosed area. They are easily magnetized and demagnetized, minimizing the energy dissipated as heat ($W$) during rapid AC cycles. These materials (such as silicon-steel alloys or soft ferrites) are indispensable as magnetic cores for transformers, electric motors, and inductors, where high permeability and low hysteresis losses are paramount.
















#pagebreak()
#pagebreak()
= Electromagnetic waves 
Since you have already mastered Maxwell's equations and the behavior of fields in matter, we now transition from static or slowly varying fields to the phenomenon of electromagnetic radiation. The jump we are making here is shifting from the study of sources to the study of propagation. In previous chapters, we looked at how a specific arrangHement of free currents or dipoles created a corresponding $bold(B)$ or $bold(H)$ field. In this new chapter, we treat the fields as independent entities. Because you already understand that a changing magnetic flux induces an electric field and a changing electric field acts as a displacement current to create a magnetic field, you have the building blocks to see how these fields sustain one another. The key connection to our previous discussion is that the velocity and impedance of these waves are dictated by the very parameters we just defined. The permeability and permittivity of the medium are not just static constants for transformers or capacitors; they are the "density" and "elasticity" of the stage upon which the wave travels. When an electromagnetic wave moves through a magnetized material, it is the interaction between the oscillating fields and the bound currents that slows the wave down or changes its direction. We are essentially taking the static laws you know and allowing them to feed into each other in a recursive loop. This loop removes the need for a physical wire or a localized charge to maintain the field. Once the oscillation begins, the energy is "shaken" loose from the source and travels through space as a wave. This marks the transition from electromagnetics as a study of components to electromagnetics as a study of light, radio, and radiant energy.

== Wave  equation

The power of Maxwell's formulation lies in the symmetry between the electric field $bold(E)$ and the magnetic field intensity $bold(H)$. When we analyze waves in a linear, isotropic medium without free charges or currents, we rely on the curl equations to describe the spatial and temporal evolution of the electromagnetic disturbance. Using the auxiliary vector $bold(H)$ is preferred here because it accounts for the material's magnetic response implicitly through the permeability $mu$.

$ curl bold(E) = -mu pdv(bold(H), t) $
$ curl bold(H) = epsilon pdv(bold(E), t) $

In these expressions, we see the core of electromagnetic radiation: a spatially varying electric field generates a time-varying magnetic response, while a spatially varying magnetic intensity generates a time-varying electric displacement. To derive the wave equation, we apply the curl operator to the first equation and utilize the second to eliminate the magnetic term. This process requires the vector identity $curl(curl bold(E)) = grad(div bold(E)) - laplacian bold(E)$. Since we are in a source-free region where $div bold(E) = 0$, the identity simplifies, leading us to the decoupled wave equation for the electric field:

$ laplacian bold(E) = mu epsilon pdv(bold(E), t, 2) $



This second-order partial differential equation confirms that the electric field propagates as a wave through the medium. An identical derivation can be performed for the magnetic field intensity $bold(H)$ by taking the curl of the second Maxwell equation, resulting in a perfectly analogous form:

$ laplacian bold(H) = mu epsilon pdv(bold(H), t, 2) $

The term $mu epsilon$ represents the inverse square of the phase velocity $v$. By using $bold(H)$  and $bold(E)$ as our primary vectors, we define the wave's characteristics based on how it interacts with the material's properties. Through this lens, electromagnetic waves are seen as a dynamic exchange of energy. The use of $bold(H)$  ensures that our equations remain valid in any linear medium, as the complex microscopic details of magnetization are elegantly handled by the permeability constant $mu$. The second order partial differential equations derived previously are the D'Alembert equations. For a vector field such as $bold(E)$, the general solution represents a disturbance that maintains its profile while translating through the medium. In the simplest case of a plane wave propagating in the $z$ direction, the fields do not vary along the $x$ or $y$ axes, meaning the wavefronts are infinite parallel planes. The harmonic (sinusoidal) solutions for the electric field $bold(E)$ and the magnetic intensity $bold(H)$ can be expressed using complex notation:

$ bold(E)(z, t) = bold(E)_0 e^(i(k z - omega t)) $
$ bold(H)(z, t) = bold(H)_0 e^(i(k z - omega t)) $

In these solutions, $bold(E)_0$ and $bold(H)_0$ are constant vectors representing the complex amplitudes. The term $omega$ is the angular frequency, while $k$ is the wave number, defined by the relationship $k = omega sqrt(mu epsilon)$. This wave number $k$ is directly tied to the material properties we discussed earlier, as it dictates the spatial phase shift per unit distance. When we substitute these plane wave solutions back into the original Maxwell curl equations, we uncover the rigorous geometric relationship between the two fields. By applying the curl operator to the harmonic form, we find that the fields must be mutually perpendicular to each other and to the direction of propagation. This leads to the cross-product relationship:

$ bold(H) = frac(1, omega mu) (bold(k) times bold(E)) $

This result confirms that electromagnetic waves are transverse. In the case of a wave traveling in the $z$ direction, if the electric field $bold(E)$ oscillates along the $x$ axis, the magnetic intensity $bold(H)$ must oscillate along the $y$ axis. Because they share the same exponential phase factor, they reach their peak and zero values at the exact same time and location within a lossless medium. The D'Alembert equation for the electric field $bold(E)$ in a vacuum is derived directly from Maxwell's equations. In a region free of charges and currents, the wave equation takes the following form:
$ 
  laplacian bold(E) - mu_0 epsilon_0 pdv(bold(E), t, 2) = 0 
$

This is a specific instance of the general wave equation, which is defined mathematically for any scalar or vector quantity $psi$ as:

$ 
  laplacian psi - frac(1, v^2) pdv(psi, t, 2) = 0 
$

By comparing the electromagnetic D'Alembert equation with the general form, we can identify the term representing the velocity of the wave. The coefficient multiplying the temporal derivative must be equal to the inverse square of the phase velocity $v$. In a vacuum, the medium is defined by the magnetic permeability $mu_0$ and the electric permittivity $epsilon_0$. Equating the terms, we find:

$ 
  frac(1, v^2) = mu_0 epsilon_0 
$
Solving for $v$ gives us the speed of propagation for electromagnetic disturbances in a vacuum, which we denote as $c$:
$ 
  c = frac(1, sqrt(mu_0 epsilon_0)) 
$

The D'Alembert equations show that $bold(E)$ and $bold(B)$ satisfy the same wave structure, but they do not satisfy them independently. Because they are linked by Faraday's Law, their amplitudes are strictly proportional. If we assume a plane wave propagating in the $z$-direction, where the electric field is polarized in the $x$-direction:

$ 
bold(E) = E_0 cos(k z - omega t) bold(e)_x 
$

We can find the corresponding magnetic field by applying the differential form of Faraday's Law, which relates the spatial "curl" of the electric field to the temporal change of the magnetic field:

$ 
curl bold(E) = -pdv(bold(B), t) 
$

Evaluating the curl for our specific wave geometry, we find that the only non-vanishing component is along the $y$-axis. By integrating the resulting expression with respect to time, we obtain the magnetic flux density:

$ 
bold(B) = B_0 cos(k z - omega t) bold(e)_y 
$
Through the substitution of these harmonic forms into the curl equation, we arrive at the requirement that $k E_0 = omega B_0$. By isolating the ratio of the amplitudes, we can define the relationship through the phase velocity of the wave:

$ 
  frac(E_0, B_0) = frac(omega, k) = v 
$

In a vacuum, this velocity $v$ is exactly $c$. Therefore, the magnitude of the electric field is always the magnitude of the magnetic field multiplied by the speed of light:
$
  E = c B 
$
This result is significant because it illustrates the vast difference in the "scale" of the two fields when measured in SI units. Even though they carry equal amounts of energy, the numerical value of $bold(E)$ is roughly $3 times 10^8$ times larger than $bold(B)$. This is why, for most atomic interactions, the electric force $q bold(E)$ is the dominant mechanism for light-matter interaction, while the magnetic force $Q (bold(v) times bold(B))$ is often negligible unless the charges are moving at relativistic speeds.

While the speed of light $c$ tells us how fast an electromagnetic wave travels, it does not describe the relative "strength" of the electric versus the magnetic component. To understand this balance, we look at the *intrinsic impedance*, denoted by $eta$. This property determines how much electric field $bold(E)$ is required to generate a corresponding magnetic field intensity $bold(H)$ within a specific material.

We begin by substituting our harmonic plane wave solutions into Faraday's Law in the form:
$ curl bold(E) = -mu pdv(bold(H), t) $

For a wave traveling in the $z$-direction, the spatial derivative of the electric field ($k E_0$) must equal the temporal derivative of the magnetic intensity ($mu omega H_0$). By isolating the ratio of the amplitudes, we define the impedance $eta$:

$ eta = frac(E_0, H_0) = frac(omega mu, k) $

Since we know from the D'Alembert equation that the wave number is $k = omega sqrt(mu epsilon)$, we can simplify the expression for $eta$ significantly. By substituting $k$ into the ratio, the angular frequency $omega$ cancels out, leaving a value that depends strictly on the intrinsic properties of the space the wave is traversing:

$ eta = sqrt(frac(mu, epsilon)) $

This result is profound because it shows that the vacuum itself, and any dielectric or magnetic material, possesses a characteristic "resistance" to the formation of electromagnetic fields. In a vacuum, where $mu = mu_0$ and $epsilon = epsilon_0$, this value is approximately:

$ eta_0 = sqrt(frac(mu_0, epsilon_0)) approx 377 Omega $
The choice of the word "impedance" and the unit *Ohms* is intentional. Just as resistance in a wire relates voltage to current, $eta$ relates the "force" of the electric field to the "flow" of the magnetic intensity. In a material with high permittivity $epsilon$ (like water or glass), the impedance is low. This means the electric field is relatively "suppressed" compared to the magnetic field. In a material with high permeability $mu$, the impedance is high, meaning a large electric field is required to sustain even a small magnetic intensity. This concept is the cornerstone of wave optics and antenna theory. When an electromagnetic wave moves from one medium to another (for example, from air into a lens), the change in impedance causes a mismatch. Similar to a mechanical wave hitting a heavier string, this mismatch forces a portion of the energy to reflect backward, while the rest is transmitted. This is why we can see reflections in glass windows; it is the physical manifestation of a sudden jump in electromagnetic impedance.

== Energy Propagation
The energy density of an electromagnetic field is composed of two parts: the energy stored in the electric field and the energy stored in the magnetic field. Using our previous definitions for a linear medium, the total energy density $u$ is given by:

$ u = 1/2 (epsilon |bold(E)|^2 + mu |bold(H)|^2) $

In a traveling plane wave, we have already proved that $E = sqrt(mu/epsilon) H$. Substituting this relationship into the energy density formula reveals a remarkable symmetry: the electric and magnetic energy densities are exactly equal at every point in space and time. This means the total energy is shared equally between the two field components. To find how this energy moves, we look at the rate of change of the energy density over time. By taking the time derivative of $u$ and utilizing Maxwell's curl equations to substitute the time derivatives of the fields, we can derive a continuity equation for electromagnetic energy. This leads us to the identity:

$ -pdv(u, t) = div(bold(E) times bold(H)) + bold(J) dot bold(E) $

The term $bold(J) dot bold(E)$ represents the power dissipated as heat (Joule heating) or work done on charges. In a vacuum or a perfect dielectric where $bold(J) = 0$, the change in energy density is accounted for entirely by the divergence of a new vector field. This field represents the power per unit area carried by the wave.

We define this power density as the *Poynting vector*, denoted by $bold(S)$. It represents the directional energy flux (the rate of energy transfer per unit area) of an electromagnetic field:

$ bold(S) = bold(E) times bold(H) $

In the case of our plane wave propagating in the $z$-direction, where $bold(E)$ is in the $x$-direction and $bold(H)$ is in the $y$-direction, the cross product $bold(E)$ $times$ $bold(H)$ points exactly in the $z$-direction. This confirms that the energy flows in the same direction as the wave propagation.



The magnitude of the Poynting vector oscillates rapidly. In practical applications, we are usually interested in the average power transmitted over time, known as the Intensity $I$. For a harmonic wave, the time-averaged magnitude of $bold(S)$ is:

$ I = chevron.l S  chevron.r = 1/2 E_0 H_0 = 1/2 sqrt(epsilon/mu) E_0^2 $

This result is fundamental to all radiative technologies. It allows us to calculate how much power a radio transmitter delivers to an antenna or how much solar energy reaches a square meter of the Earth's surface, linking the abstract field amplitudes directly to measurable physical power.

In the vacuum of free space, the propagation of electromagnetic energy reaches its most fundamental state. Since there is no matter present, the conductivity is zero and the material responses $bold(M)$ and $bold(P)$ vanish. Here, the constants $mu_0$ and $epsilon_0$ govern the entire process. The Poynting vector, which we defined as $bold(S) = bold(E) times bold(H)$, remains the definitive measure of power flow. By applying the vacuum relationship $bold(B) = mu_0 bold(H)$, we can express the Poynting vector in its most common vacuum form:

$ bold(S) = frac(1, mu_0) (bold(E) times bold(B)) $

This vector points in the direction of wave propagation, confirming that energy is transported at the speed of light $c$. In free space, because the intrinsic impedance is exactly $eta_0 approx 377 Omega$, the magnitude of the power density is uniquely determined by the strength of the electric field alone:

$ |bold(S)| = frac(E^2, eta_0) $

The energy density in free space, $u = 1/2 (epsilon_0 E^2 + 1/mu_0 B^2)$, flows without any loss because there are no charges for the fields to do work upon. This means that in a vacuum, the continuity equation simplifies significantly:
$ 
  div bold(S) = -pdv(u, t) 
$
This equation tells us that any drop in energy at a specific point in the vacuum is not "lost" to heat or friction; it has simply moved to the next point in space. This perfect conservation allows electromagnetic waves, such as the light from distant stars, to travel across billions of light-years of empty space while maintaining their structural integrity, carrying energy and information across the cosmos with no dissipation.

== Radiation Pressure
The concept of radiation pressure is one of the most counterintuitive yet profound consequences of electromagnetism. It suggests that light, something we often perceive as a ghostly, weightless presence, actually possesses a mechanical "kick." When you stand in the sun, you are being bombarded by a literal physical force, even if your senses are far too dull to detect the infinitesimal pressure of the photons against your skin. To understand why this happens, we have to look past the idea of light as just a visual signal and see it as a traveling package of momentum. At the heart of this phenomenon is the fundamental interaction between electromagnetic fields and the charges within matter. Imagine an electromagnetic wave hitting a surface, such as a metal plate or a mirror. This wave consists of an oscillating electric field $bold(E)$ and a magnetic field $bold(B)$. As the wave arrives, its electric field immediately begins to exert a force on the electrons in the material. Since electrons are charged, they respond to the electric field by accelerating. If the electric field is oscillating up and down, the electrons begin to oscillate up and down in sync with the wave. However, we cannot forget that these electrons are now moving charges within a magnetic field. This is where the "magic" of radiation pressure occurs. While the electric field is busy shaking the electrons up and down, the magnetic component of the same wave is oscillating perpendicular to that motion. According to the Lorentz force law, a magnetic field exerts a force on a moving charge that is perpendicular to both the velocity of the charge and the magnetic field itself. Because the electron is moving "up" and the magnetic field is "sideways," the resulting magnetic force points directly "forward", in the same direction the wave was traveling. This is the microscopic origin of radiation pressure. The electric field does the work of getting the charges moving, and the magnetic field then "pushes" those moving charges in the direction of propagation. This push is transferred from the electrons to the atoms of the material via internal collisions and lattice vibrations, eventually resulting in a macroscopic force on the entire object. It is a continuous transfer of momentum from the field to the matter. It is helpful to think of this as a game of catch. When you catch a ball, the ball has momentum, and to stop it, you must absorb that momentum, which pushes your hand backward. Light behaves exactly the same way. Even though a wave has no "rest mass," it carries momentum proportional to its energy. When a surface absorbs that light, it is "catching" the momentum, resulting in a push. If the surface is a perfect mirror, the interaction is even more intense. The mirror doesn't just catch the light; it reflects it back in the opposite direction. This is the equivalent of a ball bouncing off a wall; the change in momentum is doubled because the ball was stopped and then thrown back, meaning the pressure exerted on a mirror is twice as great as the pressure on a black, absorbing surface. On a human scale, this force is nearly impossible to feel. The pressure from sunlight on Earth is roughly equivalent to the weight of a single postage stamp spread over an entire football field. However, in the vacuum of space, where there is no air resistance to dampen the effect, this pressure becomes a dominant force over long periods. It is the reason why the tails of comets always point away from the Sun, regardless of which way the comet is actually moving. The Sun's radiation is literally blowing the dust and gas off the comet's body like a cosmic wind. In modern engineering, we are beginning to harness this "light-push" through technologies like solar sails. These are giant, ultra-thin reflective sheets that use nothing but the pressure of sunlight to accelerate spacecraft. While the push is small, it is constant and requires no fuel, allowing a ship to eventually reach incredible speeds. On the other end of the scale, in the hearts of massive stars, the radiation pressure is so intense that it is the only thing preventing the star from collapsing under its own immense gravity. Without the outward "kick" of the light generated in the core, the star would vanish into a black hole. This interaction proves that electromagnetic waves are more than just oscillations in a field; they are carriers of physical, mechanical quantities. The auxiliary field $bold(H)$, the flux density $bold(B)$, and the electric field $bold(E)$ work together not just to transmit images or heat, but to physically move the universe.

To understand why a wave carries momentum, we start with the *Lorentz force* density $bold(f)$, which describes the force per unit volume exerted on a distribution of charge density $rho$ and current density $bold(J)$:

$ bold(f) = rho bold(E) + bold(J) times bold(B) $

Using Maxwell’s equations, we can replace the sources ($rho$ and $bold(J)$) with the fields themselves. We substitute $rho = epsilon_0 div bold(E)$ and $bold(J)$ $= 1/mu_0 curl bold(B) - epsilon_0 pdv(bold(E), t)$. When we plug these into the force equation and apply vector identities (specifically accounting for the symmetry between $bold(E)$ and $bold(B)$), the force density can be rewritten as the divergence of the Maxwell Stress Tensor minus a time-derivative term:

$ bold(f) = div bold(T) - pdv(, t) (epsilon_0 bold(E) times bold(B)) $

In a vacuum where there are no actual charges to push ($bold(f) = 0$), the fields must still satisfy the conservation of momentum. The term inside the time derivative represents the momentum stored in the fields themselves. We define the momentum density $bold(g)$ as:

$ bold(g) = epsilon_0 (bold(E) times bold(B)) $

By recognizing that $bold(B)$ $= mu_0 bold(H)$ and that $mu_0 epsilon_0 = 1/c^2$, we can rewrite this in terms of the Poynting vector $bold(S) = bold(E) times bold(H)$:
$ 
  bold(g) = epsilon_0 mu_0 (bold(E) times bold(H)) = frac(bold(S), c^2) 
$
This derivation proves that the momentum is not "added" to the theory; it is a mathematical requirement for the conservation of total momentum (matter + fields). When the fields change in time, they create a "flow" of momentum. Because $bold(g)$ depends on the cross product of $bold(E)$ and $bold(H)$, the momentum always points in the direction of propagation. This is why light pushes objects forward. The factor of $1/c^2$ explains why this momentum is so small: even a very high-energy laser beam has a relatively tiny momentum density because the speed of light in the denominator is so vast. Through this, we see that the Poynting vector is more than just "power"; it is the literal stream of momentum that the wave carries as it travels.

Consider a plane wave hitting a surface at normal incidence. If the surface is a perfect absorber, all the momentum carried by the wave is transferred to the object as the wave "stops" at the boundary. The pressure exerted is equal to the time-averaged magnitude of the momentum flux, which simplifies to the average energy density $chevron.l u chevron.r$:

$ P_"abs" = frac(chevron.l S chevron.r, c) = chevron.l u chevron.r $

Using our previous derivation for intensity $I = chevron.l S chevron.r$, we can express the pressure in terms of the electric field amplitude:

$ P_"abs" = frac(I, c) = 1/2 epsilon_0 E_0^2 $

In the case of a perfect mirror, the interaction is more dynamic. The wave does not merely stop; its direction is reversed. The momentum change of the wave is therefore $Delta bold(p) = bold(p)_"final" - bold(p)_"initial" = (-p) - (p) = -2p$. By the principle of conservation of momentum, the surface must experience a momentum change of $+2p$. Because the change in momentum is doubled, the pressure exerted on a reflecting surface is twice that of an absorbing one:

$ P_"ref" = frac(2 I, c) = epsilon_0 E_0^2 $

This derivation demonstrates that radiation pressure is not an independent variable but is fundamentally coupled to the energy flux. By using the $bold(E)$ and $bold(H)$ fields to define the Poynting vector, we can calculate the mechanical pressure exerted on any object, from microscopic particles in optical tweezers to massive solar sails in interstellar space.

$ P = frac(I, c) (1 + R) $

where $R$ is the reflectivity of the surface (ranging from 0 for total absorption to 1 for total reflection). This equation serves as the bridge between the electrodynamic properties of the wave and the mechanical response of matter, completing our view of light as a physical agent capable of exerting work and force.

== The Polarization of Electromagnetic Waves

As we established in the general study of the wave equation, electromagnetic waves are intrinsically transverse: the electric field vector $bold(E)$ and the magnetic field vector $bold(B)$ always oscillate in a plane orthogonal to the direction of propagation, which is defined by the wave vector $bold(k)$. Since in almost all optical phenomena the interaction of radiation with matter is dominated by the action of the electric field on charges (the effect of the magnetic field being usually negligible at non-relativistic speeds), the polarization state of an electromagnetic wave is conventionally described by observing solely the temporal and spatial evolution of the vector $bold(E)$. Let us consider a plane, monochromatic electromagnetic wave propagating in a vacuum (or in an isotropic medium) along the positive direction of the $z$-axis. The electric field lies entirely within the transverse $x y$ plane and can be usefully decomposed into its two orthogonal components. For a rigorous analytical treatment that allows us to easily manipulate amplitudes and phases, it is highly advantageous to adopt the complex formalism. We therefore express the physical, measurable electric field $bold(E)(z, t)$ as the real part of a complex vector $bold(tilde(E))(z, t)$:

$ bold(E)(z, t) = "Re" { bold(tilde(E))_0 e^(i(k z - omega t)) } $

The complex amplitude vector $bold(tilde(E))_0$ is the mathematical entity containing all the information regarding the wave's polarization state. We can express it as a function of the Cartesian plane's basis unit vectors, $bold(e)_x$ and $bold(e)_y$:

$ bold(tilde(E))_0 = tilde(E)_(0x) bold(e)_x + tilde(E)_(0y) bold(e)_y = E_(0x) e^(i phi_x) bold(e)_x + E_(0y) e^(i phi_y) bold(e)_y $

In this expression, the quantities $E_(0x)$ and $E_(0y)$ are positive real numbers representing the maximum amplitudes along their respective axes, while $phi_x$ and $phi_y$ indicate the initial phases of the two components. The fundamental physical quantity that truly determines the "shape" of the polarization is not so much the absolute phase, but rather the intrinsic phase difference between the two oscillations, which we will define as $delta = phi_y - phi_x$. To intuitively and analytically understand the geometric locus described by the tip of the electric field vector as time passes, let us position ourselves in a fixed observation plane, setting for example $z = 0$. The equations for the real field components, in the time domain, become:

$ E_x (t) = E_(0x) cos(-omega t + phi_x) $
$ E_y (t) = E_(0y) cos(-omega t + phi_y) $

Our mathematical objective is now to eliminate the explicit dependence on the temporal parameter $t$ to obtain the equation of the trajectory in the $x y$ plane. We rewrite the argument of the cosine in the second equation by exploiting the identity $phi_y = phi_x + delta$. Using trigonometric addition formulas, we can express $E_y(t)$ by expanding the term dependent on $delta$. By isolating the terms containing the temporal dependence and squaring them to exploit the fundamental trigonometric identity ($sin^2 theta + cos^2 theta = 1$), we arrive, after some algebraic steps, at the general equation of the polarization curve:

$ (E_x / E_(0x))^2 + (E_y / E_(0y))^2 - 2 (E_x E_y) / (E_(0x) E_(0y)) cos(delta) = sin^2(delta) $

This quadratic expression represents the canonical equation of an ellipse. Geometrically, such an ellipse is inscribed within a rectangle of sides $2 E_(0x)$ and $2 E_(0y)$. This scenario, which represents the most general case possible, is called *elliptical polarization*. The exact orientation of the ellipse with respect to the coordinate axes is closely tied to the cross-term $E_x E_y$. The tilt angle $psi$ (called the azimuth), which the major axis of the ellipse forms with the $x$-axis, obeys the relation:

$ tan(2 psi) = (2 E_(0x) E_(0y)) / (E_(0x)^2 - E_(0y)^2) cos(delta) $
From the general equation of the ellipse just derived, it is possible to analytically deduce the two limiting cases of fundamental practical importance, which manifest themselves for specific values of the phase difference $delta$ and the amplitudes.

*Linear Polarization*
Let us consider the case where the phase difference between the two orthogonal components is zero or an integer multiple of $pi$, namely $delta = m pi$ (with $m = 0, plus.minus 1, plus.minus 2, dots$). Physically, this means that the two field components oscillate exactly in phase or in perfect anti-phase. Under this condition, the right-hand term of the ellipse equation ($sin^2(m pi)$) identically vanishes, while the term $cos(delta)$ becomes $plus.minus 1$. The equation therefore degenerates into the square of a binomial:

$ (E_x / E_(0x) plus.minus E_y / E_(0y))^2 = 0 quad => quad E_y = plus.minus (E_(0y) / E_(0x)) E_x $

This is nothing more than the equation of a pencil of lines passing through the origin. The electric field vector, in this regime, undergoes no rotation: it oscillates linearly back and forth along a direction kept strictly fixed in the transverse plane.

*Circular Polarization*
For the elliptical trajectory to degenerate into a perfect circle, the system must simultaneously satisfy two stringent conditions. First, the maximum amplitudes of oscillation along the two Cartesian axes must be strictly identical ($E_(0x) = E_(0y) = E_0$). Second, the two orthogonal components must be exactly a quarter of a period out of phase, which mathematically requires that $delta = plus.minus pi / 2 + 2m pi$. By inserting these parameters into the general equation, the cross-term vanishes (since $cos(plus.minus pi/2) = 0$) and the right-hand term becomes unitary. The equation simplifies drastically, yielding:

$ E_x^2 + E_y^2 = E_0^2 $

This is the familiar equation of a circle of radius $E_0$. In this peculiar polarization state, the electric field vector maintains a constant magnitude equal to $E_0$, but its direction rotates uniformly in space with a constant angular velocity $omega$. The sign of the phase difference $delta$ will determine the direction of rotation (clockwise or counter-clockwise), thus defining whether the wave is characterized by right-handed or left-handed circular polarization.
Having established the mathematical description of polarization states, we now turn our attention to the physical devices capable of modifying or selecting these states: polarizers. An ideal linear polarizer is an optical element that transmits only the component of the electric field oscillating parallel to a specific spatial direction, known as its *transmission axis*, while completely absorbing or reflecting the orthogonal component.
Suppose a linearly polarized electromagnetic wave with an initial amplitude $E_0$ and an irradiance (intensity) $I_0$ is incident upon an ideal linear polarizer. Let us define the transmission axis of the polarizer by the unit vector $bold(e)_t$. If the incident electric field vector $bold(E)_i$ oscillates at an angle $theta$ with respect to this transmission axis, we can geometrically decompose $bold(E)_i$ into two orthogonal components: one parallel to the transmission axis ($E_(parallel) = E_0 cos(theta)$) and one perpendicular to it ($E_(perp) = E_0 sin(theta)$).
By definition, the ideal polarizer will solely transmit the parallel component. Therefore, the amplitude of the transmitted electric field, $E_t$, is given by:

$ E_t = E_0 cos(theta) $

In optics, the physically measurable quantity is the irradiance $I$ of the wave, which is directly proportional to the time-averaged square of the electric field amplitude ($I prop E^2$). By squaring the amplitude equation, we obtain the fundamental relationship governing this process, universally known as *Malus's Law*:

$ I_t = I_0 cos^2(theta) $

This law mathematically dictates that the transmitted intensity $I_t$ reaches its absolute maximum ($I_0$) when the incident polarization is perfectly aligned with the transmission axis ($theta = 0$ or $pi$). Conversely, the transmission drops exactly to zero when the incident wave is orthogonally polarized with respect to the axis ($theta = pi/2$ or $3pi/2$), a configuration often referred to as "crossed polarizers." It is also highly instructive to consider the physical scenario where the incident light is *unpolarized* (or randomly polarized), such as the radiation emitted by a standard incandescent bulb. In this state, the electric field vector rapidly and stochastically changes its orientation over time. To determine the transmitted intensity, we must compute the statistical average of Malus's Law over all possible angles $theta$ from $0$ to $2pi$.  Since the average value of the $cos^2(theta)$ function over a full period is exactly $1/2$, an ideal polarizer will always transmit exactly half of the initial intensity of an unpolarized incident beam, emerging as linearly polarized light:

$ I_t = 1/2 I_0 $

Having established the general study of the wave equation and the intrinsic transverse nature of electromagnetic waves in uniform media, we now turn our attention to the physical phenomena that arise when such a wave encounters a macroscopic discontinuity. Let us consider a planar interface separating two linear, isotropic, and homogeneous dielectric media, characterized by refractive indices $n_1$ and $n_2$. We assume these media are non-magnetic, such that their magnetic permeabilities are well approximated by the vacuum permeability ($mu_1 approx mu_2 approx mu_0$). For a rigorous analytical treatment, we establish a Cartesian coordinate system where the boundary lies exactly within the $x y$ plane ($z = 0$), and the plane of incidence, defined by the incident wave vector $bold(k)_i$ and the surface normal, corresponds to the $x z$ plane.

Our mathematical objective is to determine exactly how the incident energy is partitioned between the reflected and transmitted (refracted) waves, and how their respective polarization states are altered. To achieve this, we rely on the fundamental macroscopic boundary conditions derived from Maxwell's equations. These conditions dictate that the tangential components of both the electric field vector $bold(E)$ and the magnetic field vector $bold(H)$ must remain strictly continuous across the interface:

$ bold(E)_(1, t) = bold(E)_(2, t) quad "and" quad bold(H)_(1, t) = bold(H)_(2, t) $

Because the boundary conditions apply to vectors, it is highly advantageous to decompose the arbitrarily polarized incident field into two orthogonal fundamental components. We define these relative to our plane of incidence:
- *$sigma$-polarization (Transverse Electric):* The electric field vector oscillates completely perpendicular to the plane of incidence, thus lying strictly along the $y$-axis.
- *$pi$-polarization (Transverse Magnetic):* The electric field vector oscillates entirely within the plane of incidence (the $x z$ plane).

Let us first analyze the case where the incident wave is purely $sigma$-polarized. Adopting the complex formalism introduced previously, we express the spatial and temporal evolution of the electric fields for the incident ($i$), reflected ($r$), and transmitted ($t$) waves as:

$ bold(tilde(E))_i = tilde(E)_(0i) e^(i(bold(k)_i dot bold(r) - omega t)) bold(e)_y $
$ bold(tilde(E))_r = tilde(E)_(0r) e^(i(bold(k)_r dot bold(r) - omega t)) bold(e)_y $
$ bold(tilde(E))_t = tilde(E)_(0t) e^(i(bold(k)_t dot bold(r) - omega t)) bold(e)_y $

Since these vectors are inherently parallel to the interface, the continuity of the tangential electric field at $z = 0$ translates immediately into a simple scalar sum of their complex amplitudes:

$ tilde(E)_(0i) + tilde(E)_(0r) = tilde(E)_(0t) $

To apply the second boundary condition, we must evaluate the magnetic fields. From Faraday's law of induction for plane waves, the magnetic field is given by $bold(H) = 1/(mu_0 omega) (bold(k) times bold(E))$. For a $sigma$-polarized wave, the $bold(H)$ vector lies entirely in the $x z$ plane. We project these vectors onto the $x$-axis (the tangential component) keeping in mind the wave vectors' orientations relative to the angles of incidence ($theta_i$), reflection ($theta_r$), and transmission ($theta_t$). Utilizing the relation $|bold(H)| = (n / c mu_0) |bold(E)|$, the continuity of the tangential magnetic field yields:

$ - (n_1 / (c mu_0)) tilde(E)_(0i) cos(theta_i) + (n_1 / (c mu_0)) tilde(E)_(0r) cos(theta_r) = - (n_2 / (c mu_0)) tilde(E)_(0t) cos(theta_t) $

By applying the law of reflection ($theta_i = theta_r$) and multiplying the entire expression by $-(c mu_0)$, we simplify this to:

$ n_1 cos(theta_i) (tilde(E)_(0i) - tilde(E)_(0r)) = n_2 cos(theta_t) tilde(E)_(0t) $

We can now substitute the electric field continuity relation ($tilde(E)_(0t) = tilde(E)_(0i) + tilde(E)_(0r)$) into this equation. By isolating the terms containing the incident and reflected amplitudes, we arrive, after some algebraic steps, at the amplitude reflection coefficient for $sigma$-polarization, defined as $r_sigma = tilde(E)_(0r) / tilde(E)_(0i)$:

$ r_sigma = (n_1 cos(theta_i) - n_2 cos(theta_t)) / (n_1 cos(theta_i) + n_2 cos(theta_t)) $

Exploiting Snell's law ($n_1 sin(theta_i) = n_2 sin(theta_t)$) to eliminate the refractive indices, we can express this purely as a function of the propagation angles:

$ r_sigma = - sin(theta_i - theta_t) / sin(theta_i + theta_t) $

We now execute a parallel derivation for the $pi$-polarization state. In this regime, it is the magnetic field $bold(H)$ that oscillates exclusively along the transverse $y$-axis, while the electric field $bold(E)$ lies entirely within the $x z$ plane. Projecting the electric field vectors onto the tangential $x$-axis gives:

$ tilde(E)_(0i) cos(theta_i) - tilde(E)_(0r) cos(theta_r) = tilde(E)_(0t) cos(theta_t) $

Again asserting $theta_i = theta_r$, this equation simplifies to:

$ cos(theta_i) (tilde(E)_(0i) - tilde(E)_(0r)) = tilde(E)_(0t) cos(theta_t) $

The magnetic field, being entirely tangential, obeys a direct sum analogous to the electric field in the previous case, albeit scaled by the intrinsic optical impedance of the media:

$ (n_1 / (c mu_0)) tilde(E)_(0i) + (n_1 / (c mu_0)) tilde(E)_(0r) = (n_2 / (c mu_0)) tilde(E)_(0t) quad => quad n_1 (tilde(E)_(0i) + tilde(E)_(0r)) = n_2 tilde(E)_(0t) $

Isolating $tilde(E)_(0t)$ from this magnetic boundary condition and substituting it back into our electric field equation allows us to decouple the transmitted amplitude:

$ cos(theta_i) (tilde(E)_(0i) - tilde(E)_(0r)) = (n_1 / n_2) (tilde(E)_(0i) + tilde(E)_(0r)) cos(theta_t) $

Multiplying by $n_2$ and algebraically gathering the respective incident and reflected terms yields the Fresnel reflection coefficient for $pi$-polarization:

$ r_pi = (n_2 cos(theta_i) - n_1 cos(theta_t)) / (n_2 cos(theta_i) + n_1 cos(theta_t)) $

Using trigonometric addition formulas and Snell's law, this assumes the elegant angular form:

$ r_pi = tan(theta_i - theta_t) / tan(theta_i + theta_t) $

While the complex amplitudes $r_sigma$ and $r_pi$ mathematically describe the phase and magnitude shifts of the field vectors, the physical, measurable quantity of interest is the irradiance, the time-averaged flow of electromagnetic energy. The reflectivity $R$, representing the fraction of incident radiant power that is reflected back into the first medium, is analytically deduced by taking the absolute square of the reflection coefficients:

$ R_sigma = |r_sigma|^2 = ((n_1 cos(theta_i) - n_2 cos(theta_t)) / (n_1 cos(theta_i) + n_2 cos(theta_t)))^2 $

$ R_pi = |r_pi|^2 = ((n_2 cos(theta_i) - n_1 cos(theta_t)) / (n_2 cos(theta_i) + n_1 cos(theta_t)))^2 $

From the general equation of the $pi$-polarized reflection coefficient just derived, it is possible to analytically deduce a limiting case of fundamental practical importance. Observing the trigonometric form $r_pi = tan(theta_i - theta_t) / tan(theta_i + theta_t)$, we note that the macroscopic reflectivity drops strictly to zero if the denominator diverges towards infinity. This condition is perfectly satisfied when:

$ theta_i + theta_t = pi / 2 $

At this singular geometrical arrangement, known as the Brewster angle ($theta_B$), the reflection of the $pi$-component is completely extinguished ($R_pi = 0$). To express this angle in terms of intrinsic material properties, we substitute the transversality condition $theta_t = pi / 2 - theta_B$ directly into Snell's law:

$ n_1 sin(theta_B) = n_2 sin(pi / 2 - theta_B) = n_2 cos(theta_B) $

Dividing by $n_1 cos(theta_B)$, the equation drastically simplifies, yielding Brewster's law:

$ tan(theta_B) = n_2 / n_1 $

Physically, this total transmission of $pi$-polarized light is a direct consequence of the microscopic radiation patterns of the atomic dipoles. At the Brewster angle, the required direction for the reflected wave is perfectly orthogonal to the direction of the transmitted wave. The electric field of the transmitted $pi$-wave forces the induced dipoles in the second medium to oscillate exactly along the axis of the anticipated reflected ray. Because an accelerating charge distribution intrinsically radiates zero electromagnetic energy along its own axis of oscillation, no energy can physically be coupled back into the reflection path, perfectly extinguishing the $pi$-polarized reflected field.

== Interactions at Material Boundaries

The fundamental cause of all boundary phenomena is the change in intrinsic impedance $eta$ and phase velocity $v$ between two media. When the fields $bold(E)$ and $bold(H)$ oscillate, they drive the local electrons in the second medium. These electrons then re-radiate their own fields, which interfere with the original wave to produce the following effects:

- *Reflection* occurs because the second medium cannot "accept" the energy flux of the incident wave at the same ratio of $bold(E)$ to $bold(H)$. To satisfy the boundary conditions (the continuity of tangential components), a portion of the energy must be "rejected" and sent back into the first medium. On a microscopic level, the incident wave shakes the surface electrons, which act as tiny antennas radiating a new wave back toward the source. So the cause is impedance mismatch ($eta_1 eq.not eta_2$).

- *Refraction* is the change in direction of the transmitted wave. When the wave enters a denser medium, its phase velocity $v = 1/sqrt(mu epsilon)$ decreases. Because the frequency $omega$ must remain constant to maintain continuity at the boundary, the wavelength must shorten. If the wave hits at an angle, one side of the wavefront slows down before the other, causing the entire front to "pivot" or bend.So the cause is change in phase velocity ($v_1 eq.not v_2$).

- In some materials, the medium is "lossy," (*absorption*) meaning it has a non-zero conductivity $sigma$ or a complex permittivity. As the electric field $bold(E)$ oscillates, it does work on the electrons, but instead of re-radiating that energy, the electrons collide with the molecular lattice, converting the electromagnetic energy into internal kinetic energy (heat).So the cause is ohmic losses and molecular friction ($bold(J) dot bold(E) > 0$).

- *Dispersion* is the phenomenon where different frequencies (colors) of light travel at different speeds through the same material. This happens because the material's response ($epsilon$) is not a fixed constant but depends on how fast the fields are oscillating. High-frequency waves might see a "stiffer" electronic response than low-frequency waves, causing them to refract at different angles. So the cause is frequency-dependent permittivity $epsilon(omega)$.

- *Diffusion* occurs when the boundary is not a smooth plane but is composed of many small, irregular surfaces or particles. If the size of these irregularities is comparable to the wavelength, the wave is reflected in thousands of different directions simultaneously. This is why a piece of paper looks white and matte rather than shiny like a mirror; it is reflecting light, but it is doing so chaotically.So the cause is surface roughness or microscopic particles relative to wavelength $lambda$.

- *Diffraction* is the "bending" of waves around corners or through narrow apertures. It is a direct result of *Huygens' Principle*, which states that every point on a wavefront acts as a source of secondary spherical waves. When a wavefront is partially blocked by an edge, these secondary waves are no longer canceled out by interference from their neighbors, allowing the wave to bleed into the "shadow" region.So the cause is wavefront truncation and secondary interference.

Snell's Law describes how the direction of propagation changes when a wave enters a medium with a different refractive index $n$. While it is often taught as a geometric rule, its origin lies in the boundary conditions of Maxwell's equations. Specifically, the tangential component of the wave vector $bold(k)$ must be conserved across the interface. Imagine a plane wave incident on a boundary at an angle $theta_1$. The wave has a spatial frequency along the interface defined by the projection of its wave vector $bold(k)_1$. For the fields to remain continuous at the boundary for all points $x$ and all times $t$, the "oscillations" of the incident wave must perfectly match the "oscillations" of the transmitted wave along that surface. 

Mathematically, this means the $x$-component of the wave vector must be the same on both sides:

$ k_1 sin(theta_1) = k_2 sin(theta_2) $

Since we know that the wave number $k$ is related to the refractive index $n$ by $k = n (omega/c)$, and the frequency $omega$ cannot change (otherwise the fields would "slip" out of sync over time), we substitute $k = n k_0$:

$ n_1 k_0 sin(theta_1) = n_2 k_0 sin(theta_2) $

Dividing by the vacuum wave number $k_0$, we arrive at the classic form of Snell's Law:

$ n_1 sin(theta_1) = n_2 sin(theta_2) $

Why does the wave bend? On a microscopic level, when the wave enters a denser medium ($n_2 > n_1$), the phase velocity $v = c/n$ decreases. As the wavefront hits the interface at an angle, the part of the wave that enters the second medium first begins to slow down, while the part still in the first medium continues at the original speed. This "staggered slowing" causes the entire wavefront to pivot, much like a line of marching soldiers pivoting when the inner file takes shorter steps. Because the frequency $omega$ is fixed by the source, the decrease in velocity *must* be compensated by a decrease in wavelength $lambda$:

$ lambda_2 = frac(lambda_1, n_2/n_1) $

This shortening of the wavelength is what physically forces the change in the angle of propagation to satisfy the continuity of the wave crests at the boundary. A critical consequence of Snell's Law occurs when light travels from a denser medium to a lighter one ($n_1 > n_2$). In this case, the refracted angle $theta_2$ is always larger than $theta_1$. As we increase the incident angle, we eventually reach a critical angle $theta_c$ where the refracted angle would theoretically be 90°:

$ sin(theta_c) = frac(n_2, n_1) $

Beyond this angle, Snell's Law has no real solution for $theta_2$. The "phase matching" can no longer be satisfied by a traveling wave in the second medium. Instead, the energy is completely reflected back into the first medium, and the field in the second medium becomes an *evanescent wave*, a field that decays exponentially and carries no net energy away from the surface.

Given the established definition of the monochromatic electromagnetic wave propagating along an optical axis, the physical electric field evaluated at a path distance $z$ and time $t$ is:

$ bold(E)(z, t) = "Re" { bold(tilde(E))_0 e^(i(k z - omega t)) } $

The complex amplitude vector $bold(tilde(E))_0$ completely completely encapsulates both the polarization state (direction) and the initial scalar phase $phi$ of the wave. We can explicitly separate this by writing $bold(tilde(E))_0 = E_0 e^(i phi) bold(bold(e))$, where $bold(bold(e))$ is the generally complex unit polarization vector.

Consider the superposition of two such waves, originating from the same coherent source but having traversed distinct optical path lengths $z_1$ and $z_2$ before recombining at an observation plane. The total instantaneous physical field is:

$ bold(E)_"tot" (t) = "Re" { bold(tilde(E))_1 e^(i(k z_1 - omega t)) } + "Re" { bold(tilde(E))_2 e^(i(k z_2 - omega t)) } $

Due to the linearity of the real-part operator, we can factor out the temporal oscillation:

$ bold(E)_"tot" (t) = "Re" { (bold(tilde(E))_1 e^(i k z_1) + bold(tilde(E))_2 e^(i k z_2)) e^(-i omega t) } $

Let us define the spatially-dependent complex phasor for each beam as $bold(tilde(U))_j (z_j) = bold(tilde(E))_j e^(i k z_j)$. The total field simplifies to $bold(E)_"tot"(t) = "Re" { bold(tilde(U))_"tot" e^(-i omega t) }$, where $bold(tilde(U))_"tot" = bold(tilde(U))_1(z_1) + bold(tilde(U))_2(z_2)$.
At optical frequencies ($omega approx 10^15 "rad/s"$), physical detectors integrate over a time constant $tau_d$ that is orders of magnitude larger than the optical period $T = (2 pi) / omega$. The observable intensity $I$ is proportional to the time-averaged magnitude squared of the real electric field:

$ 
I = 1/2 c epsilon_0 chevron.l |bold(E)_"tot" (t)|^2 chevron.r = 1/2 c epsilon_0 lim_(T -> infinity) 1 / T integral_0^T (bold(E)_"tot" (t) dot bold(E)_"tot" (t)) dd(t) 
$


To maintain rigorous analytical coherence, we evaluate this integral using the identity for the real part of a complex vector: $bold(A) = "Re"{bold(tilde(A))} = 1/2 (bold(tilde(A)) + bold(tilde(A))^*)$. Applying this to our total field:

$ chevron.l |bold(E)_"tot"(t)|^2 chevron.r &= 1/4 chevron.l (bold(tilde(U))_"tot" e^(-i omega t) + bold(tilde(U))_"tot"^* e^(i omega t)) dot (bold(tilde(U))_"tot" e^(-i omega t) + bold(tilde(U))_"tot"^* e^(i omega t)) chevron.r \
 &= 1/4 chevron.l bold(tilde(U))_"tot" dot bold(tilde(U))_"tot" e^(-i 2 omega t) + bold(tilde(U))_"tot"^* dot bold(tilde(U))_"tot"^* e^(i 2 omega t) + 2 bold(tilde(U))_"tot" dot bold(tilde(U))_"tot"^* chevron.r $

The terms oscillating at $2 omega$ rapidly average to zero upon integration over any macroscopic timeframe. The remaining term is time-independent. Thus, the time-averaged intensity is purely a function of the complex vectors:

$ I = 1/4 c epsilon_0 (2 bold(tilde(U))_"tot" dot bold(tilde(U))_"tot"^*) = 1/2 c epsilon_0 |bold(tilde(U))_"tot"|^2 $

Substituting $bold(tilde(U))_"tot" = bold(tilde(E))_1 e^(i k z_1) + bold(tilde(E))_2 e^(i k z_2)$ into our rigorous intensity formula:

$ I &= 1/2 c epsilon_0 (bold(tilde(E))_1 e^(i k z_1) + bold(tilde(E))_2 e^(i k z_2)) dot (bold(tilde(E))_1^* e^(-i k z_1) + bold(tilde(E))_2^* e^(-i k z_2))= \
  &= 1/2 c epsilon_0 ( |bold(tilde(E))_1|^2 + |bold(tilde(E))_2|^2 + bold(tilde(E))_1 dot bold(tilde(E))_2^* e^(i k (z_1 - z_2)) + bold(tilde(E))_2 dot bold(tilde(E))_1^* e^(-i k (z_1 - z_2)) ) $

We identify the isolated intensities of the individual beams as $I_1 = 1/2 c epsilon_0 |bold(tilde(E))_1|^2$ and $I_2 = 1/2 c epsilon_0 |bold(tilde(E))_2|^2$. The remaining two terms form the *interference term* $I_12$. Let us evaluate the cross-products. We extract the real amplitudes $E_1, E_2$, the initial phases $phi_1, phi_2$, and the unit polarization vectors $bold(bold(e))_1, bold(bold(e))_2$ from the complex amplitudes such that $bold(tilde(E))_j = E_j e^(i phi_j) bold(bold(e))_j$. The complex dot product becomes:

$ bold(tilde(E))_1 dot bold(tilde(E))_2^* = E_1 E_2 (bold(bold(e))_1 dot bold(bold(e))_2^*) e^(i (phi_1 - phi_2)) $

Assuming linear polarizations where $bold(bold(e))_j$ are purely real (hence $bold(bold(e))_2^* = bold(bold(e))_2$), the interference term simplifies:

$ I_12 &= 1/2 c epsilon_0 E_1 E_2 (bold(bold(e))_1 dot bold(bold(e))_2) [ e^(i(k(z_1 - z_2) + phi_1 - phi_2)) + e^(-i(k(z_1 - z_2) + phi_1 - phi_2)) ] \
 &= c epsilon_0 E_1 E_2 (bold(bold(e))_1 dot bold(bold(e))_2) cos( k(z_1 - z_2) + phi_1 - phi_2 ) $

Recognizing that $sqrt(I_1 I_2) = 1/2 c epsilon_0 E_1 E_2$, we arrive at the exact analytical expression for the observable intensity:

$ I(z_1, z_2) = I_1 + I_2 + 2 sqrt(I_1 I_2) (bold(bold(e))_1 dot bold(bold(e))_2) cos( k Delta z + Delta phi ) $

where $Delta z = z_1 - z_2$ is the physical path difference, and $Delta phi = phi_1 - phi_2$ is the inherent phase difference between the initial complex amplitudes $bold(tilde(E))_1$ and $bold(tilde(E))_2$. The argument of the cosine function, $delta = k Delta z + Delta phi$, dictates the precise macroscopic state of interference. Because the wave vector magnitude is $k = (2 pi n) / lambda_0$ (where $n$ is the refractive index of the medium), the phase term directly links the spatial coordinate to the optical frequency:

$ delta = (2 pi n) / lambda_0 Delta z + Delta phi = omega (n Delta z) / c + Delta phi $

This formulation proves that interference can be driven by two distinct mechanisms:
1.  *Path-Length Driven:* By translating a mirror in an interferometer, $Delta z$ is varied. The intensity will cycle through complete maxima and minima for every translation of $Delta z = lambda_0 / (2n)$ (accounting for round-trip path changes).
2.  *Frequency Driven (Dispersive):* If $Delta z$ is fixed and non-zero, sweeping the frequency $omega$ (or scanning the wavelength $lambda_0$) will cause the intensity to oscillate. This is the operating principle of channeled spectra and frequency-modulated interferometry.

The analytical presence of the inner product $(bold(bold(e))_1 dot bold(bold(e))_2)$ explicitly confirms that the scalar wave approximation is fundamentally incomplete. If $bold(tilde(E))_1$ is polarized along the $x$-axis ($bold(bold(e))_1 = bold(e)_x$) and $bold(tilde(E))_2$ is polarized along the $y$-axis ($bold(bold(e))_2 = bold(e)_y$), then $(bold(bold(e))_1 dot bold(bold(e))_2) = 0$. In this orthogonal state, the cross-correlation evaluates to zero, yielding $I = I_1 + I_2$ universally, regardless of the path difference $Delta z$ or the wave vector $k$. No macroscopic interference fringes can form between orthogonal modes, proving that interference is fundamentally a consequence of overlapping projection states in vector space.

Consider an opaque screen positioned at $z = 0$, containing two parallel, infinitely long slits of infinitesimal width. The slits are separated by a transverse distance $d$, located at coordinates $(y, z) = (d/2, 0)$ and $(-d/2, 0)$. A monochromatic plane wave propagates along the positive $z$-axis and normally illuminates the slits. 
According to the Huygens-Fresnel principle, the slits act as secondary sources emitting cylindrical waves into the region $z > 0$. We observe the resulting field on a screen at a distance $z = L$. We establish a transverse observation coordinate $y$ on this screen.
The absolute distance from each slit to a point $P(y, L)$ on the observation screen is given by the Pythagorean theorem:

$ s_1 &= sqrt(L^2 + (y - d/2)^2) \
  s_2 &= sqrt(L^2 + (y + d/2)^2) $

In the paraxial regime, the observation distance $L$ is vastly greater than both the slit separation $d$ and the observation region $y$ ($L >> d$ and $L >> y$). We can factor out $L$ and apply the first-order binomial (Taylor) expansion, $sqrt(1 + epsilon) approx 1 + epsilon/2$ for small $epsilon$:

$ s_1 &= L sqrt(1 + (y - d/2)^2 / L^2) tilde L ( 1 + 1/2 ((y - d/2)^2) / L^2 ) = L + ((y - d/2)^2) / (2L) \
  s_2 &= L sqrt(1 + (y + d/2)^2 / L^2) tilde L ( 1 + 1/2 ((y + d/2)^2) / L^2 ) = L + ((y + d/2)^2) / (2L) $

The critical parameter for interference is the optical path difference, $Delta s = s_2 - s_1$:

$ Delta s = ( (y + d/2)^2 - (y - d/2)^2 ) / (2L) = ( (y^2 + y d + d^2/4) - (y^2 - y d + d^2/4) ) / (2L) = (2 y d) / (2L) = (y d) / L $


Applying our generalized field definition, the complex phasor representing the field from slit $j$ arriving at point $P$ is $bold(tilde(U))_j (s_j) = bold(tilde(E))_j e^(i k s_j) / sqrt(s_j)$. The $1/sqrt(s_j)$ term accounts for the amplitude attenuation of a cylindrical wave. Because $L >> y, d$, the amplitude attenuation is nearly identical for both paths, so we approximate $1/sqrt(s_1) approx 1/sqrt(s_2) approx 1/sqrt(L)$.
Assuming uniform illumination, identical slits, and identical linear polarization states $(bold(e)_1 dot bold(e)_2 = 1)$, the complex amplitudes are equal: $bold(tilde(E))_1 / sqrt(L) = bold(tilde(E))_2 / sqrt(L) = bold(tilde(E))_0$.
The total complex field $bold(tilde(U))_"tot" (y)$ at the observation screen is the superposition of these two secondary waves:

$ bold(tilde(U))_"tot" (y) = bold(tilde(E))_0 e^(i k s_1) + bold(tilde(E))_0 e^(i k s_2) = bold(tilde(E))_0 e^(i k s_1) ( 1 + e^(i k (s_2 - s_1)) ) = bold(tilde(E))_0 e^(i k s_1) ( 1 + e^(i k Delta s) ) $

The observable time-averaged intensity $I(y)$ is proportional to the squared magnitude of the total complex field. Let $I_0 = 1/2 c epsilon_0 |bold(tilde(E))_0|^2$ be the intensity contributed by a single slit. Evaluating the total intensity:

$ I(y) &= 1/2 c epsilon_0 |bold(tilde(U))_"tot" (y)|^2 \
 &= I_0 |1 + e^(i k Delta s)|^2 \
 &= I_0 (1 + e^(i k Delta s)) (1 + e^(-i k Delta s)) \
 &= I_0 (1 + 1 + e^(i k Delta s) + e^(-i k Delta s)) \
 &= 2 I_0 (1 + cos(k Delta s)) $

Using the half-angle trigonometric identity $1 + cos(theta) = 2 cos^2(theta/2)$, we obtain the canonical spatial intensity profile:

$ I(y) = 4 I_0 cos^2( (k Delta s) / 2 ) $

Substituting $k = (2 pi) / lambda$ and our paraxially derived optical path difference $Delta s = (y d) / L$:

$ I(y) = 4 I_0 cos^2( (pi y d) / (lambda L) ) $

This equation reveals that the intensity on the observation screen varies sinusoidally with respect to the transverse coordinate $y$. The maximum possible intensity is $4 I_0$, not $2 I_0$, which is a direct consequence of the constructive interference of coherent field amplitudes rather than the incoherent addition of intensities.
The distance between consecutive bright fringes (the spatial period, $Delta y$) occurs when the argument of the cosine squared function changes by $pi$. Therefore:

$ (pi (y + Delta y) d) / (lambda L) - (pi y d) / (lambda L) = pi quad => quad (Delta y d) / (lambda L) = 1 $

Solving for the fringe spacing yields:

$ Delta y = (lambda L) / d $

This demonstrates that the fringe spacing is directly proportional to the wavelength $lambda$ and the observation distance $L$, and inversely proportional to the slit separation $d$.
The preceding derivation rigorously assumes slits of infinitesimal width, yielding an interference pattern that extends infinitely along the $y$-axis with undiminished contrast. Physically, slits possess a finite transverse width $b$. 
According to scalar diffraction theory, a finite aperture imparts a spatial modulation upon the propagating wave. The far-field (Fraunhofer) diffraction pattern of a single slit of width $b$ is described by the normalized squared sinc function, where $sinc(x) = sin(x)/x$. The single-slit diffraction intensity profile is:

$ I_"diff" (y) = I_"max" sinc^2( (pi y b) / (lambda L) ) $

When modeling the complete, physical Young's experiment, the macroscopic field is the convolution of the double-slit geometry with the single-slit aperture function. In the Fourier domain (the far-field observation screen), this convolution becomes a multiplication. The ideal two-beam interference pattern is therefore bounded by the single-slit diffraction envelope:

$ I_"total" (y) = 4 I_0 sinc^2( (pi y b) / (lambda L) ) cos^2( (pi y d) / (lambda L) ) $

Because the slit width $b$ is strictly smaller than the slit separation $d$ ($b < d$), the sinc function varies much more slowly than the cosine function. The rapidly oscillating interference fringes are thereby contained within a broader central diffraction lobe. The first zero of the diffraction envelope occurs at $y = (lambda L) / b$, strictly limiting the number of observable high-contrast interference fringes.
== Geometric Optics
When the wavelength of light is negligible compared to the size of the optical elements, we enter the regime of geometric optics. Here, we define the *Optical Axis* as the central symmetry line of the system. The *Optical Plane* is the theoretical location where the bending of light occurs. To analyze these systems, we rely on the paraxial approximation, assuming that the rays make small angles with the axis. The most fundamental relationship in this field is the *Gaussian Lens Equation*, which links the object distance $p$, the image distance $q$, and the focal length $f$:

$ 1/p + 1/q = 1/f $

Following the standard sign convention, $p$ is positive for real objects, while $q$ is positive if the image forms on the side where the light exits (a *Real Image*). If $q$ is negative, the image is on the same side as the object, meaning it is a *Virtual Image*. A real image can be projected onto a screen because the light rays physically intersect, whereas a virtual image is a psychological reconstruction by the observer's eye, as seen when looking through a magnifying glass. The degree of *Enlargement* or magnification $M$ is defined by the ratio of the image height $h_i$ to the object height $h_o$. Due to the geometry of the similar triangles formed by the chief ray passing through the center of the lens, we find:

$ M = h_i / h_o = -q / p $

If the absolute value of $M$ is greater than 1, the image is enlarged. If $M$ is negative, the image is *inverted*; if positive, it is *upright*. This explains why a single converging lens creates an inverted real image when the object is far away, but an upright virtual image when the object is closer than the focal point $f$. The "strength" of a lens is quantified by its Optical Power $P$, which is the reciprocal of the focal length $1/f$, measured in diopters ($m^(-1)$). This concept is crucial when combining multiple lenses, such as in a Compound Microscope. In such systems, the total power is approximately the sum of the individual powers, allowing us to shift and magnify images across multiple stages of the optic plane. Finally, we consider the physical construction of the lens through the *Lensmaker's Equation*. This formula shows how the refractive index $n$ and the *Radii of Curvature* $R_1$ and $R_2$ of the glass surfaces dictate the focal length:

$ 1/f = (n - 1) (1/R_1 - 1/R_2) $

This equation reveals that to achieve a higher power (a shorter focal length), the lens must either be made of a more refractive material or have more "aggressive" curvatures. This mechanical constraint is the reason high-quality camera lenses are often heavy and complex, as they must balance curvature with the need to minimize distortions. For a spherical mirror with a radius of curvature $R$, the relationship between the object distance $p$, the image distance $q$, and the focal length $f$ is given by the Gaussian form:

$ 1/p + 1/q = 1/f $

Where the focal length is defined as half the radius: $f = R / 2$. To solve optical problems consistently, we assume light travels from *left to right*. While spherical mirrors are common, they are mathematically "imperfect" for non-paraxial rays. Aspheric shapes are used to correct specific optical errors.

- *Spherical Mirrors* These are the simplest to manufacture but suffer from *spherical aberration*: rays hitting the outer edges of the mirror do not converge at the same point $f$ as rays near the center.
- *Parabolic Mirrors* A parabola has the unique geometric property of reflecting *all* rays parallel to its axis exactly into the focal point. This eliminates spherical aberration entirely for distant sources. Surface Equation: 
$
y = x^2 / (4f)
$

- *Elliptical and Hyperbolic Mirrors* These utilize the dual-foci properties of conic sections:
  - *Elliptical:* Light emitted from one focus $f_1$ converges perfectly at the second focus $f_2$. Used in medical lithotripsy and laser pumping.
  - *Hyperbolic:* Light directed toward one focus is reflected toward the other. These are essential for *Cassegrain* telescope designs to redirect light from a primary mirror.


#table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: horizon,
  [*Variable*], [*Positive ($+$)*], [*Negative ($-$)*],
  [Object Distance ($p$)], [Real Object (Left side)], [Virtual Object (Right side)],
  [Image Distance ($q$)], [Real Image (Left side)], [Virtual Image (Right side)],
  [Focal Length ($f$)], [Converging], [Diverging],
  [Magnification ($M$)], [Upright Image], [Inverted Image],
)
#table(
  columns: (auto, auto, auto),
  inset: 6pt,
  [*Shape*], [*Conic Constant ($k$)*], [*Optical Function*],
  [Hyperboloid], [$k < -1$], [Redirects converging rays; used in telescopes.],
  [Paraboloid], [$k = -1$], [Perfect focus for rays from infinity.],
  [Ellipsoid], [$-1 < k < 0$], [Focuses light between two finite points.],
  [Sphere], [$k = 0$], [Simple to make; prone to aberration.],
)




= The continuum media
Up to this point in our comprehensive study of electromagnetism, we have largely restricted our analytical focus to fields propagating through a vacuum or interacting with highly idealized material structures. In those earlier contexts, macroscopic material properties, such as electric permittivity, magnetic permeability, and electrical conductivity, were introduced as rather simple, uniform, and constant parameters. We successfully analyzed complex electrostatic and magnetostatic phenomena, and we mapped the propagation of electromagnetic waves, often taking the underlying physical nature and dynamic behavior of the material medium entirely for granted. However, as our study advances and we transition into the intricate electrodynamics of continuous media, highly dissipative systems, and complex fluid-like states of matter such as ionized plasmas, we inherently require a much more rigorous, formalized, and physically grounded understanding of the medium itself. We can no longer afford to treat the material space merely as a passive backdrop with a few attached numerical constants. To successfully bridge the conceptual and mathematical gap between the classical theory of electromagnetism and the dynamic fields of hydrodynamics, magnetohydrodynamics, or electro-hydrodynamics, we must first directly address a fundamental paradox. We must answer the question of how we can mathematically and rigorously describe a physical material, which is fundamentally and unalterably composed of a vast multitude of discrete, constantly moving microscopic particles, as a perfectly smooth, uninterrupted, and continuous entity. This profound transition in perspective, moving from the chaotic microscopic reality to a manageable macroscopic model, is governed entirely by what is known in physics as the continuum hypothesis. From a fundamental, microscopically accurate viewpoint, all ordinary matter is undeniably discrete. Any solid piece of metal, any flowing liquid, or any volume of gas is composed of individual atoms, molecules, or charged ions that are separated by immense expanses of empty vacuum. In a strictly discrete or microscopic modeling paradigm, fully understanding and predicting the state of a physical system would strictly require tracking the instantaneous position, the velocity vector, and the internal energy state of every single constituent particle across time. If we were to foolishly attempt to apply classical mechanics and microscopic electrodynamics directly to a macroscopic volume of gas, we would be faced with the task of solving Newton's laws of motion simultaneously with the Lorentz force law for an unfathomably large number of interacting bodies. For any standard macroscopic volume, the number of particles is on the order of Avogadro's number, which is approximately $N_A approx 6.022 times 10^23$ particles per mole. Attempting to formulate, let alone solve, a fiercely coupled system of $10^23$ nonlinear differential equations is not merely analytically impossible; it is completely and irrevocably beyond the capabilities of any current or theoretically foreseeable computational architecture. Furthermore, even if such a feat were possible, tracking individual atomic trajectories is practically useless for the vast majority of macroscopic engineering and applied physics problems. At our human scale, we rarely care about the precise location of a single gas molecule; rather, we are deeply concerned with observable, aggregate, and statistically averaged behaviors, such as the total pressure exerted on a surface, the measurable temperature, the bulk fluid velocity, and the macroscopic electrical polarization. To gracefully sidestep this overwhelming and paralyzing complexity, the disciplines of applied physics and engineering rely almost exclusively on the continuum approach. The continuum model deliberately and systematically ignores the granular, particulate, and chaotic nature of matter, entirely disregarding the vast empty spaces existing between individual molecules. Instead, this powerful paradigm conceptualizes the material strictly as a continuous, unbroken, and endlessly divisible mass that completely and uniformly fills the spatial volume it occupies. In this incredibly useful macroscopic framework, all physical properties are redefined. Quantities such as mass density ($rho$), thermodynamic pressure ($p$), temperature ($T$), macroscopic fluid velocity ($bold(u)$), and the macroscopic electromagnetic fields ($bold(E)$ and $bold(B)$) are mathematically formulated as perfectly continuous, smoothly differentiable functions of the continuous spatial coordinates ($bold(r)$) and the variable of time ($t$). By deliberately smoothing out the frantic microscopic thermal fluctuations, we successfully replace billions of discrete, intractable algebraic summations with elegant continuous volume integrals and manageable partial differential equations. This fundamental shift essentially paves the way for the robust and highly successful fields of continuum mechanics and macroscopic electrodynamics. However, for the continuum hypothesis to be considered mathematically sound and physically valid, we must carefully define what actually constitutes a "point" within our newly conceptualized continuous medium. In pure, abstract mathematics, a point is a zero-dimensional entity possessing absolutely no volume whatsoever. Yet, if we were to take a physical volume of matter and systematically shrink it down toward an absolute mathematical zero, we would inevitably encounter a severe problem. We would eventually end up traversing the empty vacuum space residing between atomic structures, where the enclosed mass, and therefore the local density, is precisely zero. Alternatively, if our infinitesimally small, shrinking volume happened to land perfectly on the dense center of a single atomic nucleus, the localized calculation of density would absurdly spike toward infinity. Both scenarios completely destroy the concept of a smooth mathematical field. To elegantly resolve this apparent paradox, the continuum hypothesis formally introduces the crucial concept of the Representative Elementary Volume, often abbreviated as the REV, which serves as our "macroscopic physical point.". In this formulation, $Delta V$ represents a small, arbitrary volume spatially centered at the coordinate position $bold(r)$, while $Delta m$ represents the total accumulated mass of all the discrete, individual particles that happen to be currently residing within the boundaries of that specific volume at time $t$. Notice that the limit operation here does not actually approach absolute zero. Rather, it approaches a critical, strictly non-zero minimum volume denoted by $delta V$. The physical reasoning behind this specific limit is a delicate balancing act. This limiting volume $delta V$ must be inherently small enough that any macroscopic, large-scale variations in the physical field are entirely negligible across its geometric dimensions, thereby allowing us to safely treat it as an infinitesimal differential element within the framework of standard calculus. Simultaneously, and equally importantly, $delta V$ must remain sufficiently large in an absolute sense to consistently contain a statistically massive number of individual particles. This ensures that the highly random, chaotic thermal movements of molecules rapidly entering and exiting the defined volume will perfectly average out over time. When a volume is chosen that satisfies both of these stringent criteria, it produces a highly stable, completely non-fluctuating macroscopic property, guaranteeing that the medium will act and mathematically behave as a continuous whole. Of course, the validity of this powerful continuum hypothesis is by no means universal. Its applicability is highly contingent upon the specific physical conditions of the system under observation, particularly the overall particle density and the characteristic geometric scale of the physical problem being analyzed. We require a robust, quantitative metric to definitively determine whether a discrete microscopic model or a smooth continuous model should be applied to any given scenario. This indispensable metric is known in fluid dynamics and statistical mechanics as the Knudsen number, universally denoted as $"Kn"$. The Knudsen number is defined as a purely dimensionless quantity that represents the fundamental ratio between two critical length scales: the microscopic molecular mean free path and a uniquely representative macroscopic physical length scale inherent to the system. The mean free path, universally denoted by the Greek letter $lambda$, is defined as the average, statistical distance that a single active particle travels through space between successive physical collisions with other particles in the medium. The straightforward mathematical definition of the Knudsen number is given by the ratio:
$
  "Kn" = lambda / L
$

In this fundamental equation, $lambda$ stands as the aforementioned mean free path of the discrete particles comprising the physical medium. The denominator, $L$, represents the characteristic length scale defining the macroscopic problem at hand. Depending on the context, this macroscopic length $L$ could be the physical diameter of a fluid-carrying pipe, the total length of an emitting antenna, the chord length of an aircraft wing, or even the specific wavelength of an external electromagnetic wave that is dynamically interacting with the material medium. The molecular mean free path itself is strictly inversely proportional to the overall particle density of the material. In a highly dense medium, such as a pool of liquid water or a volume of atmospheric gas at standard sea-level pressure, the constituent particles are extremely tightly packed together. Consequently, molecular collisions are incredibly frequent, and the resulting mean free path $lambda$ is microscopically, almost vanishingly small. Under such conditions, the Knudsen number evaluates to an exceptionally small fraction. By systematically evaluating the magnitude of the Knudsen number, physicists and engineers can effectively categorize any physical system into one of several distinct behavioral regimes. This categorization is paramount, as it directly dictates the specific type of physical laws, boundary conditions, and mathematical models that must be reliably utilized.  When the Knudsen number is exceptionally small, typically evaluated as $"Kn" < 0.01$, the system is considered to be firmly situated within the standard continuum regime. In this highly idealized state, the microscopic mean free path of the particles is infinitesimally small when directly compared to the overarching macroscopic dimensions of the physical system. Because of this extreme density, the particles naturally collide with each other far more frequently than they ever collide with the physical boundaries containing the system. These incredibly frequent intermolecular interactions relentlessly drive the system toward stability, ensuring that the medium remains strictly in a state of local thermodynamic equilibrium at almost all times. In this specific regime, the foundational continuum hypothesis is completely and unquestionably valid. The complex material medium can be highly accurately and reliably described by the continuous Navier-Stokes equations for fluid dynamics and the generalized, macroscopic Maxwell's equations for electromagnetism. This extremely stable regime serves as the fundamental domain for classical electro-hydrodynamics and standard macroscopic magneto-hydrodynamics. However, as the gas becomes progressively more rarefied due to a drop in pressure, or equivalently, as the physical scale of the engineering problem shrinks down to micro-dimensions, the system begins to subtly shift. When the Knudsen number rises to fall between $0.01$ and $0.1$, we enter what is commonly known as the slip flow regime. In this transitional state, the foundational continuum assumption begins to slightly fray, particularly near solid physical boundaries. While the vast central bulk of the fluid still heavily behaves as a continuous mass, the particles located immediately adjacent to physical walls no longer interact frequently enough to perfectly share the boundary's exact velocity or temperature profile. To maintain mathematical accuracy without abandoning the continuum equations entirely, specialized "slip" boundary conditions must be manually formulated and meticulously applied to the governing partial differential equations. If the density continues to drop, pushing the Knudsen number even higher into a range generally bounded between $0.1$ and $10$, the system fully enters the transition regime. In this highly complex state, the classical continuum assumption fails significantly and undeniably. The standard mathematical continuum equations, such as Navier-Stokes, rapidly lose their predictive accuracy because the fundamental statistical averaging required over the Representative Elementary Volume is simply no longer physically valid. The particles are too sparse for local equilibrium to be maintained. Consequently, the material medium can no longer be modeled as a simple continuous fluid; instead, it must be painstakingly analyzed using the deeply complex mathematics of statistical mechanics, relying heavily on integro-differential equations such as the Boltzmann transport equation to track probability distributions rather than absolute continuous fields. Finally, in the extreme case where the Knudsen number grows exceedingly large, strictly defined as $"Kn" > 10$, we find ourselves in the realm of free molecular flow. In this desolate regime, the physical mean free path of a given particle has become vastly larger than the entire characteristic length scale of the enclosing macroscopic system. An individual particle will routinely traverse the entire spatial volume of the system and violently collide with the outer containing boundaries without ever having mathematically collided with another constituent particle. At this extreme limit, the entire conceptual framework of the continuum model is completely and irreparably broken. The system can absolutely no longer be viewed as a cohesive fluid or a continuous medium in any sense. Instead, it must be strictly treated as a sparse collection of entirely discrete, independent entities traveling along isolated ballistic trajectories. Analyzing this regime strictly requires advanced kinetic models, a highly specialized approach that becomes absolutely essential when studying advanced, low-density, collisionless environments.

== The Kinematics of the Continuum

Having firmly established the physical justification for treating a discrete, chaotic collection of microscopic particles as a perfectly smooth, continuous macroscopic medium, we must now construct the rigorous mathematical and geometric framework required to accurately describe its existence, its physical shape, and its dynamic evolution over time. In the rigorous study of continuum mechanics and electrodynamics, we cannot simply rely on the vague, intuitive notions of objects and movement that we use in everyday language. Instead, we must formally define what a material body actually is in a mathematical sense, how it occupies physical space, and precisely how we quantify its continuous motion. In this highly formalized theoretical framework, we begin by defining the continuous material body itself, which we will denote universally by the mathematical symbol $scr(B)$. Rather than viewing the body as a physical chunk of mass, we must abstractly define the continuous body $scr(B)$ as a completely continuous, unbroken set of foundational elements known as material points, or simply particles. A single material point, typically denoted by a capital letter such as $P$, represents an infinitesimally small, fundamental constituent piece of the macroscopic material. It is crucial to understand that this material point $P$ is a theoretical entity belonging purely to the abstract body space; it is not yet a coordinate in physical reality, but rather a unique identifier for a specific, identifiable piece of the continuous matter, much like a permanent name tag attached to an infinitesimal drop of fluid. However, an abstract collection of material points does not possess a physical geometry or a measurable shape until it is placed into a physical arena. This physical arena is standard three-dimensional Euclidean space, which we will denote as $E^3$. The process of mapping the abstract, unshaped material points of the body $scr(B)$ into actual, observable positions within the physical Euclidean space $E^3$ is formally known as a configuration. Mathematically, a configuration is defined as a one-to-one, continuous, and highly smooth mapping, often denoted by the Greek letter $kappa$. When the mapping function $kappa$ is applied to the entire abstract body $scr(B)$, it assigns to every single material point $P$ a highly specific, uniquely defined spatial position vector $bold(x)$ within the physical space. The total subset of the Euclidean space that is currently occupied by the body under this specific configuration mapping is referred to as the region or the spatial domain of the body. Because matter inherently moves and geometrically deforms over time due to external forces and internal stresses, a single, static configuration mapping is entirely insufficient to describe the dynamic, living physical world. This absolute necessity leads us directly to the fundamental, mathematical definition of motion within a continuous medium. In continuum mechanics, motion is not merely a change in velocity; rather, motion is rigorously defined as a continuous, one-parameter family of configuration mappings, where the single varying parameter is, quite naturally, time, denoted by the variable $t$. To trace the complex history of a deforming body, we conventionally select one highly specific configuration to serve as our fixed, foundational baseline, which we call the reference configuration, universally denoted as $kappa_0$. In this chosen reference configuration, every abstract material point $P$ is assigned a fixed, initial reference position vector, which we will denote with a capital mathematical vector $bold(X)$. Because the mapping is strictly one-to-one, we can conveniently and universally use this fixed initial position vector $bold(X)$ to permanently identify the specific material particle itself, regardless of where it travels in the future. As time progressively marches forward, the body undergoes a continuous motion, transforming from the reference configuration into a new, currently active spatial arrangement known as the present configuration or the current configuration, denoted simply as $kappa_t$. The complex, time-dependent mapping function that physically transports the material particle from its original reference position $bold(X)$ to its entirely new, current spatial position $bold(x)$ at the specific time $t$ is defined as the motion map, typically denoted by the Greek letter $chi$. We can therefore write the fundamental kinematic equation of the continuous medium as:

$
  bold(x) = chi(bold(X), t)
$
This elegant equation simply states that the current physical location $bold(x)$ of any piece of matter depends entirely on which specific piece of matter we are tracking, identified by its starting position $bold(X)$, and the exact moment in time $t$ at which we are currently observing it. This dual nature of spatial coordinates, having both an original reference position $bold(X)$ and a current spatial position $bold(x)$, inevitably leads to two entirely distinct, yet deeply interconnected, mathematical methodologies for describing how physical fields, such as temperature, velocity, or the electromagnetic tensor, evolve within the moving continuous medium. These two distinct analytical perspectives are universally known as the Lagrangian description and the Eulerian description. The Lagrangian description, frequently referred to in literature as the material description, focuses its analytical attention entirely on the individual, moving pieces of matter themselves. In this specific mathematical framework, any arbitrary physical property, let us call it $F$, is expressed purely as a function of the permanent material identifier $bold(X)$ and the flowing time $t$, written mathematically as $F(bold(X), t)$. Taking the Lagrangian perspective is functionally identical to attaching an infinitesimally small, indestructible tracking device or a highly advanced scientific sensor directly onto a single, specific particle of the continuous medium. As the surrounding fluid completely deforms, churns, and wildly flows through space, the hypothetical observer moving with the Lagrangian sensor is blindly carried along for the ride, exclusively recording the changing physical conditions, such as a fluctuating external electric field or a shifting local pressure, that this exact, specific piece of matter uniquely experiences over the course of its complex journey. It is a deeply historical and inherently personal description of the kinematics, heavily utilized in the solid mechanics of deformable structures where tracking the exact material strain of a specific structural component is completely paramount. Conversely, the Eulerian description, which is widely known as the spatial description, entirely abandons the difficult task of tracking individual, wandering particles. Instead, it rigidly fixes its analytical focus on stationary, unmoving locations within the physical Euclidean space itself. In the Eulerian mathematical framework, an arbitrary physical property, which we will denote with a lowercase $f$, is expressed purely as a function of the currently observed spatial coordinate $bold(x)$ and time $t$, written mathematically as $f(bold(x), t)$. To properly visualize the Eulerian perspective, one must imagine an observer standing perfectly still on a concrete bridge crossing a rapidly moving river, firmly holding a sensor directly into the rushing water at one exact, unchanging geometric coordinate. The observer makes absolutely no attempt to track where a specific, individual water molecule came from, nor do they care where that specific molecule is subsequently going. The observer only records the instantaneous physical properties, such as fluid velocity or charge density, of whichever random, anonymous material particles happen to be passing through that exact, predetermined spatial location $bold(x)$ at that specific moment in time $t$. Because the particles themselves are constantly changing and cycling through the fixed observation point, the Eulerian description is inherently a field description. It is the absolute standard and deeply preferred methodology for fluid dynamics, atmospheric sciences, and macroscopic electrodynamics, where the complex spatial distribution of fields across a region is vastly more important than the individual life histories of the flowing continuous matter. While these two philosophical perspectives are profoundly different in their practical application, they are mathematically unified by the fundamental motion map $chi$. If we know the precise Eulerian spatial field $f(bold(x), t)$, we can easily determine what a specific material particle is experiencing by substituting the current position $bold(x)$ with the motion map $chi(bold(X), t)$, yielding the mathematical relationship:
$
  F(bold(X), t) = f(chi(bold(X), t), t)
$
Conversely, through the rigorous mathematical application of the inverse motion map, we can effortlessly translate a Lagrangian material history back into an Eulerian spatial field. This beautiful, seamless translation between the moving particle perspective and the fixed spatial perspective forms the absolute mathematical bedrock required to accurately derive the complex differential equations governing moving conductive media, which we will intensely explore in the following sections. When rigorously analyzing the kinematics of a continuous medium, it is physically vital and mathematically essential to explicitly distinguish how the material derivative operates on physical fields of varying tensorial rank. The intuitive concept of a fluid particle sweeping through a spatial gradient takes on fundamentally different mathematical forms depending on whether the physical property being transported is a simple scalar quantity, such as mass density or thermodynamic temperature, or a directional vector quantity, such as the macroscopic electric field or the continuum's velocity field itself. By strictly separating the scalar product from the true tensor product, our governing equations become profoundly more expressive, explicitly preserving the underlying geometric reality of the deforming body $scr(B)$. To thoroughly understand this crucial mathematical distinction, we must first analyze the fundamental nature of the spatial gradient operating on a scalar field. Let us consider an arbitrary Eulerian scalar field $phi(bold(x), t)$. When we take the spatial gradient of this field, the resulting mathematical object, $grad phi$, is inherently a standard Cartesian spatial vector pointing in the direction of the greatest spatial increase of $phi$. Therefore, the convective rate of change, the specific portion of the total temporal change experienced by a moving material point purely due to its physical translation through this inhomogeneous space, is exactly the directional derivative of the field along the particle's instantaneous velocity vector $bold(u)$. This physical projection is perfectly and completely captured by the standard Euclidean inner product, or the scalar dot product. Thus, for any scalar field, the total material derivative is rigorously and unambiguously written as:

$
  Dm(phi) = pdv(phi, t) + bold(u) dot grad phi
$

However, when we elevate our analytical attention to a flowing, continuous vector field, the mathematical landscape shifts dramatically. Let us consider a vector field such as the local magnetic flux density $bold(B)(bold(x), t)$ or the mechanical fluid velocity field $bold(u)(bold(x), t)$ itself. The spatial gradient of a continuous vector field does not produce another simple vector; rather, it fundamentally produces a second-order tensor, denoted explicitly as $grad bold(B)$ or $grad bold(u)$. This resulting spatial gradient tensor acts strictly as a linear transformation, mapping physical directional vectors into the spatial variations of the field across the continuous domain. Consequently, the true convective rate of change actively experienced by the moving material particle can absolutely no longer be represented by a simple dot product. Attempting to use archaic vector calculus operators deeply obscures the tensorial reality of the continuous manifold. Instead, the convective change is the rigorous mathematical application of this second-order gradient tensor acting directly upon the physical velocity vector $bold(u)$. This yields the elegant tensorial expression $(grad bold(B)) bold(u)$, beautifully representing the linear map without relying on overloaded, ambiguous notation. The total material derivative for a vector field is thus perfectly expressed as:

$
  Dm(bold(B)) = pdv(bold(B), t) + (grad bold(B))bold(u)
$

This strict notational and conceptual separation forms the absolute mathematical bedrock required to correctly formulate the highly nonlinear, coupled partial differential equations of electrodynamics and complex fluid mechanics. For instance, when formally deriving the continuous acceleration field $bold(a)$ of the macroscopic fluid to apply Newton's second law, we must apply the material derivative directly to the Eulerian velocity field $bold(u)$. Utilizing our rigorous tensorial notation, the fundamental continuous acceleration equation is written as:

$
  bold(a) = Dm(bold(u)) = pdv(bold(u), t) + (grad bold(u))bold(u)
$

== The Reynolds Transport Theorem

Having established the mechanics of tracking the rate of change for individual material particles using the material derivative, we must now tackle the macroscopic equivalent. In continuum mechanics, it is necessary to analyze finite, three-dimensional volumes of matter. The Reynolds Transport Theorem is the fundamental mathematical tool that allows us to calculate the rate of change of an integrated physical quantity over a finite material volume that is continuously moving, deforming, and changing shape along with the flow. Physically, this acts as the three-dimensional, moving-domain generalization of Leibniz's rule for differentiation under the integral sign. Let $phi(bold(x), t)$ be an arbitrary Eulerian scalar field representing a physical property per unit volume. We want to find the true material rate of change of the total amount of $phi$ contained within a specific moving material region, strictly denoted by its current spatial configuration $Omega_t$. Because the physical boundaries of $Omega_t$ are actively flowing with the velocity field $bold(u)$, the domain of integration is completely time-dependent. To prove this analytically, we start with the definition of the material derivative applied to our volume integral:

$
  dv(,t)integral_(Omega_t) phi(bold(x), t)
$

Because the spatial domain $Omega_t$ is actively changing with time $t$, we cannot simply pass the time derivative inside the integral. To bypass this restriction, we must temporarily map the entire integral back to the fixed, unmoving reference configuration $Omega_0$.  We accomplish this mapping by utilizing the Jacobian determinant of the deformation gradient, denoted as $J$. The Jacobian geometrically represents the local volume expansion or contraction of the material, mapping the differential volume element from the current configuration $d v$ back to the reference configuration $d V$ via the relation $d v = J d V$. Transforming the integral yields:

$
  integral_(Omega_t) phi = integral_(Omega_0) phi J
$

Now, because the reference domain $Omega_0$ is strictly defined by the initial, unchanging material coordinates, the boundaries of this specific integral are completely independent of time. Therefore, we are mathematically permitted to pass the material derivative directly through the integral sign:

$
 dv(,t) integral_(Omega_0) phi J  = integral_(Omega_0) Dm(phi J) 
$

Next, we apply the standard product rule of differentiation to the integrand $Dm(phi J)$ and immediately substitute the crucial kinematic identity $Dm(J) = J div bold(u)$, which dictates that the material rate of change of the Jacobian is governed by the divergence of the velocity field:

$
  Dm((phi J)) = Dm(phi) J + phi Dm(J) = (Dm(phi) + phi div bold(u)) J
$

Now that we have successfully differentiated the terms, we push the integral back forward from the fixed reference configuration $Omega_0$ into the current spatial configuration $Omega_t$ by substituting $J d V$ back to $d v$:

$
  integral_(Omega_0) [(Dm(phi) + phi div bold(u)) J] = integral_(Omega_t) [Dm(phi) + phi div bold(u)]
$

We then expand the material derivative $Dm(phi)$ using the scalar identity rigorously defined in previous sections: $Dm(phi) = pdv(phi, t) + bold(u) dot grad phi$. Substituting this into our integrand gives:

$
  Dm(phi) + phi div bold(u) = pdv(phi, t) + bold(u) dot grad phi + phi div bold(u)
$

The last two terms on the right side seamlessly combine via the standard vector calculus product rule for divergence, specifically $div (phi bold(u)) = bold(u) dot grad phi + phi div bold(u)$. By collapsing these terms, we arrive at the final, elegant analytical form of the Reynolds Transport Theorem:

$
  dv(,t) integral_(Omega_t) phi  = integral_(Omega_t) [pdv(phi, t) + div (phi bold(u))]
$

This resulting equation dictates that the total rate of change of the property within the moving material volume is exactly equal to the volume integral of the local Eulerian time derivative $pdv(phi, t)$, plus the divergence of the flux $phi bold(u)$ across the moving boundaries. Through the application of the Divergence Theorem, this forms the absolute mathematical foundation for macroscopic conservation laws in continuum mechanics.

== The Continuity Equation
The fundamental principle of mass conservation dictates that the total mass of a closed, materially advected system remains strictly constant over time. For a continuous medium, the total mass contained within an arbitrary, moving material volume $Omega_t$ is defined by the volume integral of the local mass density field $rho(bold(x), t)$. Expressing the conservation law mathematically, the total time derivative of this integral must be identically zero:

$
  dv(,t)integral_(Omega_t) rho = 0
$

Applying the Reynolds Transport Theorem directly to the scalar density field $rho$ yields:

$
  integral_(Omega_t) (pdv(rho, t) + div(rho bold(u))) = 0
$

Because this integral must evaluate to zero for any arbitrary choice of the material control volume $Omega_t$ within the continuous domain, the integrand itself must vanish at every local spatial point. This yields the rigorous Eulerian, or spatial, form of the continuity equation:

$
  pdv(rho, t) + div(rho bold(u)) = 0
$

By expanding the divergence term using the standard vector product rule, $div(rho bold(u)) = rho div bold(u) + bold(u) dot grad rho$, and subsequently grouping the terms to reconstruct the definition of the material derivative $Dm(rho)$, we can alternatively express the continuity equation in its Lagrangian, or material, form:

$
  Dm(rho) + rho div bold(u) = 0
$

This specific formulation mathematically formalizes the physical reality that the temporal rate of change of a fluid particle's density is perfectly balanced by the local volumetric expansion or compression of the velocity field, measured by the divergence $div bold(u)$. Armed with the continuity equation, we can derive a highly specialized and profoundly simplified form of the Reynolds Transport Theorem. In many advanced physical applications, particularly in thermodynamics and momentum conservation, we are concerned with the transport of an extensive property whose corresponding intensive property $phi$ is defined strictly *per unit mass* rather than per unit volume. In such cases, the local volumetric density of the property is given by the product $rho phi$, and the relevant integral takes the form $integral_(Omega_t) rho phi$. We begin by applying the general Reynolds Transport Theorem to the composite scalar field $(rho phi)$:

$
  dv(, t) integral_(Omega_t) rho phi = integral_(Omega_t) ( pdv(rho phi, t) + div(rho phi bold(u)) )
$

We proceed to expand the integrand mathematically using standard calculus product rules. The local Eulerian time derivative expands as:

$
  pdv(rho phi, t) = rho pdv(phi, t) + phi pdv(rho, t)
$

Similarly, the divergence term expands to isolate the field variables:

$
  div(rho phi bold(u)) = phi div(rho bold(u)) + rho bold(u) dot grad phi
$

Substituting these complete expansions back into the integral and strategically factoring out the constituent fields $rho$ and $phi$ gives:

$
  integral_(Omega_t) [ rho (pdv(phi, t) + bold(u) dot grad phi) + phi (pdv(rho, t) + div(rho bold(u)))]
$

The physical elegance of this specific formulation now becomes immediately apparent. The second grouped term inside the integral, factored by $phi$, contains the exact expression for the Eulerian continuity equation, $pdv(rho, t) + div(rho bold(u))$. Since mass must be locally conserved, this term is strictly zero. Consequently, that entire portion of the integral vanishes. Furthermore, the first grouped term, factored by $rho$, represents the exact geometric definition of the material derivative of the specific property, $Dm(phi)$. The transport integral thus collapses into a remarkably simple and powerful identity:

$
  dv(, t) integral_(Omega_t) rho phi = integral_(Omega_t) rho Dm(phi)
$
This identity proves that the material rate of change of an integrated specific property is equivalent to simply integrating the material derivative of that property, weighted by the local density, over the current spatial configuration. This specific form is absolutely instrumental in deriving the fundamental Cauchy momentum equation and the conservation of internal energy, as it perfectly isolates the kinematic temporal evolution of the physical field from the underlying mass distribution mechanics of the flowing continuum.

When classifying fluid behavior under the lens of the continuity equation, a common and fundamental point of confusion arises between a flow being "incompressible" and a fluid possessing a "constant density." While they are intimately related, they are not mathematically or physically equivalent. It is crucial to strictly distinguish between a property following a moving fluid particle and a property being globally uniform across space. A fluid flow is rigorously defined as incompressible if the mass density of every individual material fluid parcel remains perfectly constant as it translates and deforms through space. Mathematically, this dictates that the material derivative of the density field is exactly zero:

$
  Dm(rho) = 0
$

To see the profound kinematic consequence of this physical constraint, we insert this condition directly into the Lagrangian form of the continuity equation we just derived, $Dm(rho) + rho div bold(u) = 0$. Since the convective rate of change of density is zero, the equation immediately collapses to:

$
  rho div bold(u) = 0
$

Assuming the physical fluid mass $rho$ is strictly non-zero, this mandates that the velocity field itself must be divergence-free, or solenoidal:

$
  div bold(u) = 0
$

This is the ultimate mathematical hallmark of an incompressible flow. It explicitly means that while a material volume $Omega_t$ might shear, stretch, or distort into immensely complex shapes as it flows, its net volumetric capacity cannot expand or compress. Conversely, a fluid is said to have uniform density (often loosely called "constant density") if the Eulerian density field $rho(bold(x), t)$ is perfectly identical at every spatial point and does not change over time. In this highly restrictive case, the density scalar field is simply a global constant, $rho_0$. Mathematically, this means all spatial and temporal gradients are zero:

$
  pdv(rho, t) = 0 quad "and" quad grad rho = 0
$

If a fluid exists entirely at a uniform density, it is inherently and trivially incompressible. We can rigorously prove this by evaluating the full definition of the material derivative:

$
  Dm(rho) = pdv(rho, t) + bold(u) dot grad rho = 0 + bold(u) dot 0 = 0
$

The absolute core of the distinction is this: a fluid can be strictly incompressible ($div bold(u) = 0$) without having a uniform density ($grad rho != 0$). This specific regime governs heterogeneous incompressible flows. Consider the complex fluid dynamics of distinct immiscible liquids, such as a mixture of water and oil flowing through a pipe, or the large-scale oceanographic currents where dense, cold, highly saline water flows stably beneath warmer, fresher water. In these precise macroscopic scenarios, the density field varies dramatically across the spatial domain. However, as a specific "particle" of oil or dense saltwater advects through the domain along its pathline, its individual density does not change. Therefore, the material constraint $Dm(rho) = 0$ is completely satisfied, and the underlying velocity field remains strictly divergence-free, even though the Eulerian density field is entirely non-constant from point to point.

== Deformation and Strain Rate
In the study of solid mechanics, deformation is typically analyzed by tracking the displacement of material points relative to a fixed, stress-free reference configuration. This approach, which relies heavily on the displacement gradient tensor, is highly effective for elastic materials that retain a structural memory and tend to return to their original shape. However, fluids fundamentally differ from solids because they continuously and indefinitely deform under any applied shear stress. A fluid possesses no memory of a pristine initial state, rendering the concept of a permanent reference configuration both physically meaningless and mathematically impractical. For a flowing continuous medium, there is no inherent undeformed state to refer back to. Therefore, instead of analyzing how much a fluid has deformed over time, we must analyze how fast it is currently deforming at this exact instant. To achieve this, we shift our kinematic focus away from the displacement field and exclusively toward the Eulerian velocity field $bold(u)(bold(x), t)$. The critical quantity for analyzing fluid strain becomes the spatial gradient of velocity, denoted as $grad bold(u)$. This second-order tensor maps the relative velocities between infinitesimally close fluid particles, thereby perfectly describing the local, instantaneous rate of deformation at any given spatial point. Just as with any second-order tensor, the velocity gradient $grad bold(u)$ can be uniquely decomposed into two fundamental mathematical components: a symmetric part and a skew-symmetric part. This additive decomposition is expressed as:

$
  grad bold(u) = "sym"(grad bold(u)) + "skw"(grad bold(u))
$
The symmetric component, $bold(E)$, is formally known as the strain rate tensor or the rate of deformation tensor. It is defined mathematically as the symmetric gradient of the velocity field:
$
  bold(E) = 1/2 (grad bold(u) + (grad bold(u))^T)
$
The strain rate tensor $bold(E)$ is the true measure of physical deformation within the fluid. It explicitly governs the actual stretching, shearing, and volumetric expansion of a local fluid element. Because it is a purely symmetric tensor, its diagonal components represent the linear rates of elongation or compression along the primary coordinate axes, while its off-diagonal components quantify the rates of angular deformation, which physically correspond to shear strain rates.
The skew-symmetric component, $bold(W)$, is known as the spin tensor or the rotation tensor. It is defined as the anti-symmetric gradient of the velocity field:
$
  bold(W) = 1/2 (grad bold(u) - (grad bold(u))^T)
$
Unlike the strain rate tensor, the spin tensor $bold(W)$ does not contribute to the actual deformation, stretching, or change in shape of the fluid element. Instead, it completely isolates the rotational kinematics of the flow, purely dictating the instantaneous rate of rigid-body rotation of the fluid parcel about its own local center of mass.

== Deformation of the continuum

To rigorously investigate the deeply historical kinematics of continuous matter, it is completely paramount to establish how the physical distance between specific, individual particles changes as they undergo their complex journey over time. Deformation, in its most fundamental sense, is characterized not merely by the shifting of mass through space, but by the relative changes in proximity between neighboring pieces of matter. If all particles merely shifted in unison, we would be observing rigid body translation; it is only when the local distances between these intimately connected neighbors fluctuate that true material strain occurs. 

Let us firmly fix our analytical focus on a specific, undisturbed reference configuration at an initial state. Within this pristine material landscape, we consider two distinct, infinitesimally close material particles, which we will rigorously denote using the Lagrangian reference coordinates $bold(X)$ and $bold(X)_0$. The exact, infinitesimal material segment that they uniquely identify is conceptually bound to the primary particle $bold(X)_0$. This microscopic structural component possesses an initial, deeply historical reference length of:

$ dif l_0 = |bold(X) - bold(X)_0| $

To properly visualize this material relationship and separate the purely geometric orientation of the segment from its physical magnitude, we isolate the specific direction of this infinitesimal segment. We achieve this by defining an immutable unit vector $bold(t)$, which seamlessly points from the anchor particle $bold(X)_0$ to its neighbor $bold(X)$:

$ bold(t) := (bold(X) - bold(X)_0)/(|bold(X) - bold(X)_0|), $

Through this precise, normalizing definition, we can effortlessly translate the relative reference position back into a coupled function of its initial length and fundamental direction. This allows us to parameterize the surrounding material neighborhood simply by scaling the orientation vector:

$ bold(X) - bold(X)_0 = dif l_0 bold(t) $

As the continuous matter dynamically evolves over the course of time $t$, perhaps responding to a fluctuating external electric field or a shifting local pressure, the fundamental motion map, explicitly defined as $chi(bold(X), t)$, takes over. This deeply historical mapping function translates these stationary Lagrangian material particles into their currently observed Eulerian spatial positions, $chi(bold(X), t)$ and $chi(bold(X)_0, t)$. The observer now records a new, shifting spatial segment roaming through Euclidean space, characterized by the instantaneous, deformed spatial length:

$ dif l := |chi(bold(X), t) - chi(bold(X)_0, t)| $

To truly understand how the original material fiber has been stretched and rotated by the continuum's complex journey, we must examine the local, differential behavior of the mapping function. By rigorously applying a Taylor series expansion to the motion map $chi$ around the exact, predetermined material particle $bold(X)_0$ at the specific moment in time $t$, we uncover the absolute mathematical bedrock governing the local spatial deformation:

$ chi(bold(X), t) = chi(bold(X)_0, t) + bold(F)(bold(X)_0, t)[bold(X) - bold(X)_0] + o(|bold(X) - bold(X)_0|) $

Here, the mathematical operator $bold(F) = grad chi(bold(X), t)$ represents the profoundly important deformation gradient tensor. This two-point tensor acts as the indispensable linear bridge between the undeformed material history and the currently observed spatial reality, uniquely experienced by the local neighborhood of the particle at time $t$. By substituting our previously derived Lagrangian relationship into this linear expansion, we seamlessly map the initial directional segment into its current spatial configuration:

$ chi(bold(X), t) - chi(bold(X)_0, t) = dif l_0 bold(F) bold(t) + o(dif l_0) $

This elegant relationship instantly yields the magnitude of the newly deformed spatial segment, perfectly capturing the cumulative stretching and rotating effects of the material's history:

$ dif l = |chi(bold(X), t) - chi(bold(X)_0, t)| = dif l_0 |bold(F) bold(t)| + o(dif l_0) $

By entirely abandoning the infinitesimals of higher order $o(dif l_0)$, which vanish as we restrict our view to the strictly local material neighborhood, we arrive at the exact mathematical ratio between the fluctuating current length and its deeply historical reference length. This localized stretch ratio is the absolute cornerstone of strain measurement:

$ (dif l) / (dif l_0) = |bold(F) bold(t)| $

We have thus rigorously concluded that for any specific, infinitesimal piece of matter originally oriented along the reference direction $bold(t)$, the fundamental ratio of its deformed spatial length at time $t$ to its undeformed material length is precisely equal to the magnitude of the instantaneous deformation gradient operating directly upon that initial Lagrangian vector. While the deformation gradient $bold(F)$ contains the full, complex history of both material stretch and rigid spatial rotation, it is often vastly more important to isolate the pure material strain. To mathematically unify this result into a more elegant form that aggressively filters out irrelevant rigid body rotations, we can rewrite the magnitude utilizing the standard Euclidean dot product. This mathematical maneuver beautifully exposes the symmetric nature of the pure stretch:

$ |bold(F) bold(t)| = sqrt(bold(F) bold(t) dot bold(F) bold(t)) = sqrt(bold(F)^top bold(F) bold(t) dot bold(t)). $

By conceptually absorbing the transpose of the deformation gradient into itself, we introduce the _right Cauchy-Green tensor_, an absolute standard in the solid mechanics of deformable structures. This inherently Lagrangian tensor, operating entirely within the reference configuration and defined mathematically as a continuous function of time, is written as:

$ bold(C)(bold(X), t) := bold(F)^top bold(F) $

Ultimately, the exact material strain, expressed as the local, instantaneous ratio between the deformed spatial length and the undeformed reference length of our specific structural component, can alternatively be written as this beautiful, seamless, and rotationally-invariant relationship:

$ (dif l) / (dif l_0) = sqrt(bold(C) bold(t) dot bold(t)) $

As we have already established in our deeply rigorous investigation of material kinematics, to precisely quantify the strictly local variations in physical length experienced by our structural components, it is entirely unnecessary to wrestle with the full, overwhelming complexity of the deformation gradient $bold(F)$, which intrinsically harbors 9 independent components. Instead, the profound mathematical elegance of continuum mechanics reveals that the right Cauchy-Green tensor $bold(C)$ perfectly encapsulates all necessary metric information. Furthermore, due to its fundamental construction from the deformation gradient, we have previously seen that $bold(C)$ is intrinsically symmetric and, as one can immediately verify from its physical definition, strictly positive definite.

Because of these pristine mathematical properties, we can invoke the powerful spectral theorem to seamlessly decompose $bold(C)$ into a profoundly revealing principal representation:

$ bold(C) = sum_(i=1)^3 lambda_i bold(c)_i times.o bold(c)_i, $

where the deeply fundamental eigenvalues $lambda_i$ are guaranteed to be strictly positive quantities. Exploiting this absolute positivity, we can define a new, incredibly important physical tensor by carefully taking the square root of these eigenvalues:

$ bold(U) := sum_(i=1)^3 sqrt(lambda_i) bold(c)_i times.o bold(c)_i, $

which immediately yields the foundational mathematical relationship $bold(C) = bold(U) bold(U) = bold(U)^2$. This uniquely defined tensor $bold(U)$, rigorously recognized as the _right stretch tensor_ (tensore destro della deformazione), is obviously inherently symmetric and positive definite. Physically, it beautifully represents the absolute sum of three pure, unadulterated extensions acting strictly along three mutually orthogonal principal material directions.

With the pure material stretch now completely isolated within $bold(U)$, we can deliberately define a residual mathematical operator, $bold(R)$, to factor out the remaining transformation from the total historical deformation:

$ bold(R) = bold(F) bold(U)^(-1) $

This resulting tensor $bold(R)$ is not merely an abstract mathematical artifact; it is clearly and undeniably a pure spatial rotation. We can absolutely prove this by evaluating its fundamental orthogonality condition:

$ bold(R)^top bold(R) = (bold(U)^(-1))^top bold(F)^top bold(F) bold(U)^(-1) = bold(U)^(-1) bold(C) bold(U)^(-1) = bold(U)^(-1) bold(U) bold(U) bold(U)^(-1) = bold(I) $

This deeply satisfying sequence of mathematical reasoning culminates in the celebrated _polar decomposition_ theorem, an absolute cornerstone of finite strain kinematics:

$ bold(F) = bold(R) bold(U). $

This elegant factorization, conceptually illustrated in standard kinematic diagrams, reveals in the most evident manner possible that the total deformation gradient $bold(F)$ inherently contains within itself a rigid spatial rotation $bold(R)$, a component that is completely unresponsible for any actual material stretching or physical length variations. In this strict, philosophical sense, $bold(F)$ itself is absolutely not a suitable _measure of deformation_. Conversely, the fundamental tensors $bold(C)$ and $bold(U)$ are perfectly tailored to strictly describe the physical shape changes associated with true metric variations of the continuous body. However, a philosophical discrepancy remains: these pristine measures do not gracefully vanish when the continuum undergoes a purely rigid journey. Indeed, if the motion is strictly rigid ($bold(F) = bold(R)$), the mathematical bedrock dictates that $bold(C) = bold(U) = bold(I)$, rather than reaching a state of absolute zero. Because it fundamentally makes sense to define a true, rigorous measure of deformation as a "defect of rigidity", a quantifiable departure from an unstrained, pristine state, we are compelled to introduce the _Green-Saint-Venant tensor_:

$ bold(D) := 1/2 (bold(C) - bold(I)) $

which beautifully and seamlessly maps any purely rigid structural deformation directly back to the null tensor. The mathematical scaling factor of $1/2$ inherently carries no deep physical significance on its own, but it will prove profoundly convenient for ensuring strict mathematical consistency with classical theories in our subsequent derivations.

From the fundamental metric variations derived previously, we must philosophically ask if this specific static formulation is valid for our fluid description. The definitive answer is no, because a continuous fluid perpetually evolves over time $t$ through the motion map $chi$, meaning its total historical deformation gradient wanders infinitely far from the pristine identity tensor. However, we can brilliantly adapt this framework by evaluating the kinematics relative to the current configuration over an infinitesimally small time increment $dif t$. To rigorously quantify this temporal proximity and establish a foundation for instantaneous fluid deformations, we are compelled to introduce a fundamental parameter of smallness based on the spatial velocity field $bold(v)$ over the entire spatial domain $Omega$:

$
  epsilon := sup_(bold(x) in Omega) |bold(F)_t (t + dif t) - bold(I)|
$

This profoundly important parameter meticulously measures the absolute greatest metric distance between the relative deformation gradient and the null state of identity during the infinitesimal time step. Drawing upon the deeply historical definition of the motion map $chi$ and isolating the spatial velocity gradient $bold(L) := nabla bold(v)$, this structural bound can be elegantly reformulated as:

$
  epsilon = sup_(bold(x) in Omega) |bold(L)(bold(x), t) dif t|
$

We now philosophically pivot to consider the highly specialized analytical framework governing instantaneous fluid mechanics. This framework is deliberately constructed by aggressively neglecting all infinitesimals of an order strictly superior to the first power of the time increment $dif t$. Let us rigorously investigate which pure measures of deformation remain valid within this time constrained infinitesimal landscape. We begin by acknowledging that the relative deformation gradient can be seamlessly decomposed to highlight its magnitude and direction over time:

$
  bold(F)_t (t + dif t) = bold(I) + epsilon(bold(x), t)tilde(bold(L))(bold(x), t) quad epsilon(bold(x), t) := |bold(L)(bold(x), t) dif t| quad tilde(bold(L))(bold(x), t) := (bold(L)(bold(x), t) dif t) / (|bold(L)(bold(x), t) dif t|)
$

Given our absolute supreme bound, it is undeniably true that $epsilon(bold(x), t) <= epsilon$ for every specific spatial location $bold(x) in Omega$. Consequently, we are fully philosophically authorized to mercilessly discard any mathematical terms carrying the order of $epsilon^2(bold(x), t)$ which directly corresponds to $dif t^2$. By executing this deliberate truncation, the relative right Cauchy Green tensor majestically simplifies through the following sequence:

$
  bold(C)_t (t + dif t) &= bold(F)_t^top (t + dif t)bold(F)_t (t + dif t) = bold(I) + bold(L)^top (bold(x), t) dif t + bold(L)(bold(x), t) dif t + bold(L)^top (bold(x), t)bold(L)(bold(x), t) dif t^2 \
  &= bold(I) + epsilon(bold(x), t)tilde(bold(L))^top (bold(x), t) + epsilon(bold(x), t)tilde(bold(L))(bold(x), t) + epsilon^2(bold(x), t)tilde(bold(L))^top (bold(x), t)tilde(bold(L))(bold(x), t) \
  &= bold(I) + epsilon(bold(x), t)tilde(bold(L))^top (bold(x), t) + epsilon(bold(x), t)tilde(bold(L))(bold(x), t) \
  &= bold(I) + bold(L)^top (bold(x), t) dif t + bold(L)(bold(x), t) dif t
$

Moving forward in our profound exploration, we shall purposefully avoid explicitly introducing the smallness parameter $epsilon$ at every analytical turn, and instead implicitly neglect all superlinear time increments governed by $dif t$. Under this rigorous infinitesimal assumption over time, the profound rate of deformation elegantly emerges from evaluating the metric variation tensor:

$
  bold(D)(bold(x), t) dif t = 1/2 (bold(C)_t (t + dif t) - bold(I)) = 1/2 (bold(L)(bold(x), t) + bold(L)^top (bold(x), t)) dif t
$

By isolating the instantaneous rate, this fundamentally derived tensor, precisely defined as the symmetric component of the velocity gradient, is heralded as the _rate of deformation tensor_ (tensore della velocita di deformazione):

$
  bold(E)(bold(x), t) := "sym" bold(L)(bold(x), t)
$

It stands as the absolute mathematical bedrock required to completely and definitively characterize all instantaneous metric variations within the strict boundaries of fluid theory. As is universally true for any deeply complex second order tensor, the spatial velocity gradient can be seamlessly and rigorously decomposed into its pure symmetric and purely antisymmetric constituent parts:

$
  bold(L) = "sym" bold(L) + "skw" bold(L)
$

Having already established the profound physical identity of the rate of deformation tensor as $bold(D) = "sym" bold(L)$, we now turn our rigorous analytical focus to demonstrate that its antisymmetric counterpart perfectly represents an infinitesimally rigid spatial rotation rate, capturing fluid vorticity:

$
  bold(W) := "skw" bold(L)
$

To meticulously prove this geometric reality, we approximate the deeply historical polar relation over our minuscule time increment $dif t$ to clearly visualize the fundamental structure of an infinitesimal fluid rotation:

$
  bold(R)_t (t + dif t) = bold(F)_t (t + dif t)bold(U)_t^(-1)(t + dif t)
$

By consistently neglecting the superlinear terms locked within $dif t$, thus operating in the instantaneous regime, it directly follows from our prior derivation of $bold(C)_t$ that:

$
  bold(U)_t^2 = bold(C)_t = bold(I) + 2bold(E) dif t
$

On the other hand, we can easily construct the following beautiful chain of equalities by expanding the squared identity plus deformation rate tensor and aggressively truncating the higher order remainder:

$
  (bold(I) + bold(E) dif t)^2 = (bold(I) + bold(E) dif t)(bold(I) + bold(E) dif t) = bold(I) + 2bold(E) dif t = bold(U)_t^2
$

From this elegant mathematical equivalence, we can immediately and confidently deduce the linearized form of the relative right stretch tensor:

$
  bold(U)_t = bold(I) + bold(E) dif t
$

Possessing this crucial approximation for $bold(U)_t$, it becomes absolutely necessary to discover its corresponding inverse $bold(U)_t^(-1)$. Because the product of the tensor and its proposed linearized inverse yields the pristine identity when subjected to our strict truncation of superlinear terms:

$
  (bold(I) + bold(E) dif t)(bold(I) - bold(E) dif t) = bold(I)
$

we can seamlessly conclude that the infinitesimal inverse over time is beautifully expressed as:

$
  bold(U)_t^(-1) = bold(I) - bold(E) dif t
$

We are now perfectly equipped to determine the exact, unadulterated form that the rigid spatial rotation rate $bold(R)_t$ assumes when we mercilessly truncate the superlinear terms in $dif t$. By substituting our linearized components back into the fundamental polar decomposition, we reveal its true nature:

$
  bold(R)_t (t + dif t) = bold(F)_t bold(U)_t^(-1) = (bold(I) + bold(L) dif t)(bold(I) - bold(E) dif t) = bold(I) - bold(E) dif t + bold(L) dif t = bold(I) + bold(W) dif t
$

Continuing our profound exploration of instantaneous fluid kinematics, we must deeply analyze how the precise metric shape of a continuous fluid element endlessly evolves over the parameter of time $t$. Having brilliantly established the spatial rate of deformation tensor $bold(E)$ as the absolute core measure of fluid stretching, we can seamlessly apply it to evaluate the temporal variations of all fundamental geometric constructs including length, volume, internal angles, and bounded surface areas.

Let us begin by mathematically proving the instantaneous stretching of a specific material line. Consider an infinitesimally small fluid segment $dif bold(x)$ perfectly aligned along a unit direction vector $bold(t)$ with a spatial length $dif ell$, such that $dif bold(x) = dif ell bold(t)$. The squared length of this segment is intrinsically defined by the scalar dot product:

$
  dif ell^2 = dif bold(x) dot dif bold(x)
$

To discover how this length dynamically evolves, we rigorously evaluate its material time derivative. Recognizing that the time derivative of the spatial vector $dif bold(x)$ separating two continuous material particles is simply the velocity difference $dif bold(v)$, which can be beautifully expressed through the spatial velocity gradient as $bold(L) dif bold(x)$, we obtain:

$
  dv(dif ell^2, t) = 2 dif ell dv(dif ell, t) = 2 dif bold(x) dot dv(dif bold(x), t) = 2 dif bold(x) dot bold(L) dif bold(x)
$

Recalling our profound mathematical decomposition $bold(L) = bold(E) + bold(W)$, and intimately understanding that the quadratic form of any pure antisymmetric tensor like $bold(W)$ strictly vanishes, the expression simplifies to rely entirely upon the symmetric rate of deformation. By substituting our directional definition $dif bold(x) = dif ell bold(t)$, the fundamental proof majestically concludes:

$
  2 dif ell dv(dif ell, t) = 2 dif ell^2 (bold(t) dot bold(E)(bold(x), t) bold(t))
$

By canceling the common scalar terms, we discover that the specific rate of linear extension is entirely governed by the normal projection of the rate of deformation tensor along that exact direction:

$
  dv(dif ell, t) = (bold(t) dot bold(E)(bold(x), t) bold(t)) dif ell
$

Moving from a single dimension to the complete physical space, we must mathematically prove the temporal evolution of an infinitesimal fluid volume. A spatial volume element $dif v$ is historically linked to its original material volume $dif V$ through the determinant of the deformation gradient $J = det bold(F)$:

$
  dif v = J dif V
$

As the fluid journeys along its complex Eulerian path, we take the material time derivative of this relation. The fundamental mathematical identity for the rate of change of the Jacobian determinant reveals that $dot(J) = J "tr" bold(L)$. Because the trace of the antisymmetric spin tensor is universally zero, this perfectly and seamlessly simplifies to $dot(J) = J "tr" bold(E)$:

$
  dv(dif v, t) = dot(J) dif V = (J "tr" bold(E)(bold(x), t)) dif V
$

By substituting the current volume back into the equation, we obtain the absolute instantaneous rate of volumetric variation, magnificently captured by simply taking the trace of the rate of deformation tensor, which fundamentally represents the divergence of the spatial velocity field:

$
  dv(dif v, t) = "tr" bold(E)(bold(x), t) dif v
$

Let us now consider the instantaneous angular distortion occurring within the flowing matter, a complex phenomenon intrinsically linked to internal fluid shear. Imagine two infinitesimal fluid line segments currently aligned with two perfectly orthogonal unit direction vectors $bold(t)_1$ and $bold(t)_2$. As the continuous matter flows and deforms, the pristine right angle initially separating these specific material lines will inexorably change. By rigorously evaluating the time derivative of the geometric angle bounded between these vectors, we discover that the instantaneous rate of angular variation $theta$ is beautifully expressed as:

$
  dv(theta, t) = - 2 bold(t)_1 dot bold(D)(bold(x), t) bold(t)_2
$

This elegant mathematical relation demonstrates that pure fluid shear is physically realized and strictly quantified through the cross directional interactions mapped by the tensor $bold(E)$.

Finally, we philosophically pivot to the deeply important concept of continuous surface area deformation. Consider an infinitesimally small oriented fluid surface patch currently possessing an area $dif a$ and perfectly defined by a strictly orthogonal unit normal vector $bold(n)$. This bounded material surface will dynamically stretch and compress, radically altering its total spatial area over time. The instantaneous rate of area expansion is revealed to be a magnificent interplay between the total volumetric expansion rate and the specific linear stretching occurring strictly perpendicular to the surface patch:

$
  dv(dif a, t) = (bold(I) - bold(n) times.o bold(n)) dot bold(E)(bold(x), t)  dif a
$

Through these absolutely fundamental temporal relations, the complete instantaneous geometric distortion of the continuous fluid, beautifully characterized by pure linear stretch, volumetric dilation, internal angular shear, and oriented surface area expansion, is perfectly encapsulated by the pure symmetric rate of deformation.

== System of forces and tension

= Electrodynamics in dissipative media
= Electro-hydrodynamics
= Magneto-hydrodynamics
= Fluid model for plasma
= Kinetic model for plasma