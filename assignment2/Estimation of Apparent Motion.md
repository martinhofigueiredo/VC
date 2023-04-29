# __Project 1 – Estimation of the apparent motion__ 
Visual motion perception from a moving observer is the most often encountered case in real life
situations. It is a complex and challenging problem, although, it can promote the arising of new
applications.

1) Implement two traditional optical flow techniques with multichannel and multiresolution
with refinement approaches, namely: (Local) Lucas-Kanade and (Global) Horn-Schunck.

2) Consider the following metrics to assess the quality of your implementation:
     - Average angular error (AAE) and standard deviation
     - Average end-point error (EPE) and standard deviation
     - Dataset for benchmarking: [link](https://vision.middlebury.edu/flow/data/)

3) Discuss the results, taking into consideration the following paper: 

> Andry et al. (2013), Revisiting Lucas-Kanade and Horn-Schunck, Journal of Computer Engineering and Informatics, Apr. 2013, Vol. 1 Iss. 2, PP. 23-29. 

Results must be provided as a table.

4) Consider the image sequences for this project and estimate the optical flow using these two
techniques. Produce two videos per image sequence showing the magnitude and orientation of
the flow using the color scheme presented in the lectures. Discuss the results obtained.
Image sequences for this project:

    - Forest_15_3b_Videvo

    - Forest_15_4_Videvo
    
 
# Sensing
The performance of the HybridTree technique is evaluated using a set of synthetic and
real image sequences. By knowing the authentic velocity field, that is, the ground truth, it
is possible to analyze the error. Although there is an amount of error measurements, in the
literature, and the most used are the average Angular Error (AE) and the Endpoint Error
(EPE). The AE was proposed by Fleet and Jepson (1990) [174] and used in Barron et al.
(1994) [60]. It measures the error between the ground truth, $w_{g} = (u_{g}, v_{g},1)^{T}$ , and the
estimated flow, $w_e = (u_e, v_e,1)^T$, by considering the unit vector normal for the velocity
plane. In this case, the error is reported in degrees (see Eq. 5.20).


$$AE = arcos\left(\frac{w_{e}^T \cdot w_t }{\mid\mid w_e\mid\mid\cdot\mid\mid w_g\mid\mid}\right)$$

The simplest error measurement is probably the EPE as this is the square magnitude
of the difference between the ground truth and the estimated flow. The EPE is useful to
analyze the spatial structure of the errors [3], and can simply be viewed from a visual
image, see Eq. 5.21.

$$EPE = \sqrt{\mid\mid w_e − w_g\mid\mid}$$



In the literature, proposed optical flow techniques are often compared to the classical
HS and LK formulations [60]. Comparing todays methods to the notable work conducted
by Barron et al. (1994) [60] is not reasonable because it does not incorporate the most
important modern practices, such as the hierarchical structure and the warping process.
Therefore, the results presented in this research aim to provide a reliable characterization of the performance and computational cost involved during the optical flow estimation for modern and standalone versions of LK and HS, presented in the previous section.
In addition, the HybridTree (HY) is compared to another hybrid approach, named, CLG2D [21]. The LK, HS and HY are implemented using similar schemes so that they can
be compared more reliably. The CLG is implemented considering the information presented in [21]. The performance achieved by our implementation of the CLG method is
very similar to that reported in [21], if not somewhat better (probably due to an improved
combination of parameters). Extensive experiments were conducted using a large number
of test sequences. All the techniques are implemented in C++ using the commonly used
OpenCV library (version 2.4.3).
A parameter optimization method based on simulated annealing [26] is used to set
up some parameters. The algorithm optimizes the parameters by considering the convergence time of the splitting and the merging operation (following the number of regions).


# Ref
- https://learnopencv.com/optical-flow-in-opencv/
- [Lucas Kanade](https://sandipanweb.wordpress.com/2018/02/25/implementing-lucas-kanade-optical-flow-algorithm-in-python/)

