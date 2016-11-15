(* ::Package:: *)

(********1*********2*********3*********4*********5*********6*********7*****
 * ModifiedGravity.m 
 * Package written by MA Lei: arlenmarvin@gmail.com
 *                                    Fudan University Physics
 *                                    http://multiverse.lamost.org
 * This package is under copyleft lisence. I took no responsibility for any possible losses of anyone or anything.
 * 
 *   
 **************************************************************************)

BeginPackage["ModifiedGravity`"]

(** Declare functions available after loading
 *                    by providing their usage explanation **)
(* This is an example of how to Declare functions in a package.
IMetric::usage = "IMetric[g], with g an n.n-matrix (two lower indices),
  returns the inverse metric (two upper indices)."
*)

DisformalTransformation::usage = "DisformalTransformation gives the table of disformal transformation modified gravity."
fRGravity::usage = "fRGravity gives the table of some essential knowledge of f(R) theories."

helpGREAT::usage = "Gives information of some popular modified gravity theories."





(* ::InheritFromParent:: *)
(**)


Print["-------------------------------------------------------------------------------------"];
Print["This package is a depository of modified gravity theories. This package uses a +2 sign metric if not specified."];


Begin["`Private`"]
(* These are a example of how to write functions in a package.
IMetric[metric_] := Simplify[Inverse[metric]];

Christoffel[metric_,x_]:=
  Block[{Dim, iMet, PreChristoffel, Christoffel, i, j, k},
         Dim = Length[x];
         iMet = IMetric[metric];
           (* Metric with upper indices *)
         PreChristoffel =
           Table[ D[metric[[k,i]],x[[j]]]
                + D[metric[[j,k]],x[[i]]]
                - D[metric[[i,j]],x[[k]]],
          	   {k,Dim}, {i,Dim}, {j,Dim} ];
          	 (* The \{k,ij\} Christoffel symbols *)
         PreChristoffel = Simplify[PreChristoffel];
            (* The \Gamma^k_{ij} Christoffel symbols *)
         Christoffel = (1/2) iMet . PreChristoffel;
         (* Return the Christoffel symbol: *)
         Simplify[Christoffel] ]
*)
MGassistant:=ButtonBar[{"DisformalTransformation":>Print[DisformalTransformation]}]


DisformalTransformation:=Grid[
{{"Disformal Transformation",SpanFromLeft,SpanFromLeft},{"Name","Content","Comment"},
{"Metric","\!\(\*SubscriptBox[OverscriptBox[\(g\), \(-\)], \(\[Mu]\[Nu]\)]\)=C(\[Phi])\!\(\*SubscriptBox[\(g\), \(\[Mu]\[Nu]\)]\)+D(\[Phi])\!\(\*SubscriptBox[\(\[Phi]\), \(\(,\)\(\[Mu]\)\)]\)\!\(\*SubscriptBox[\(\[Phi]\), \(\(,\)\(\[Nu]\)\)]\)","The metric that relates geometry and scalar field."},
{"Action","S=\[Integral] \!\(\*SuperscriptBox[\(d\), \(4\)]\)x (\!\(\*SqrtBox[\(-g\)]\)(\!\(\*FractionBox[\(1\), \(16\\\ \[Pi]\\\ G\)]\) R - \!\(\*SubscriptBox[\(\[ScriptCapitalL]\), \(\[Phi]\)]\)) - \!\(\*SqrtBox[\(-\*OverscriptBox[\(g\), \(-\)]\)]\) \!\(\*OverscriptBox[SubscriptBox[\(\[ScriptCapitalL]\), \(m\)], \(-\)]\))",""},
{"Energy-Momentum",Grid[{{"Matter","\!\(\*SubsuperscriptBox[\(T\), \(\[Phi]\), \(\[Mu]\[Nu]\)]\)=\!\(\*FractionBox[\(2\), SqrtBox[\(-g\)]]\)\!\(\*FractionBox[\(\[Delta] \((\*SqrtBox[\(-g\)] \*SubscriptBox[\(\[ScriptCapitalL]\), \(\[Phi]\)])\)\), SubscriptBox[\(\[Delta]g\), \(\[Mu]\[Nu]\)]]\)"},{"Scalar field","\!\(\*SubsuperscriptBox[\(T\), \(m\), \(\[Mu]\[Nu]\)]\)=\!\(\*FractionBox[\(2\), SqrtBox[\(-g\)]]\)\!\(\*FractionBox[\(\[Delta] \((\*SqrtBox[\(-\*OverscriptBox[\(g\), \(-\)]\)] \*OverscriptBox[SubscriptBox[\(\[ScriptCapitalL]\), \(m\)], \(-\)])\)\), SubscriptBox[\(\[Delta]g\), \(\[Mu]\[Nu]\)]]\)"}},Frame->All],"Definations of energy-momentum tensor."},
{"Conservation",Grid[{{"Total","(\!\(\*SubsuperscriptBox[\(G\), \(\(;\)\(\[Mu]\)\), \(\[Mu]\[Nu]\)]\)=((\!\(\*SubsuperscriptBox[\(T\), \((m)\), \(\[Mu]\[Nu]\)]\)+\!\(\*SubsuperscriptBox[\(T\), \((\[Phi])\), \(\[Mu]\[Nu]\)]\)\!\(\*SubscriptBox[\()\), \(\(;\)\(\[Mu]\)\)]\)"},{"Matter","(I still do not know how to display this much)"},{"Scalar field","Well later"}},Frame->All]}
},Frame->All]


fRGravity[]:=



helpModifiedGravity:= Print["GREAT functions are: IMetric, Christoffel,
  Riemann, Ricci, SCurvature, EinsteinTensor, SqRicci, SqRiemann."]

End[]

EndPackage[]

helpModifiedGravity

Print["Enter 'helpModifiedGravity' for this list of functions"]








