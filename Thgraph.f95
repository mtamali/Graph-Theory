! A fortran95 program for G95
! By TAMALI Mohammed
! Program ThGraphe, for computing incidence matrix of graph
! Created by Dec,4 2018 19:30
program main
  implicit none
  integer :: n, m, i1, i2, j
  integer, allocatable, dimension(:,:) :: A

  write(*,*) "Saisie des données"
  write(*,*) "Lecture de la dimension de A, N: Nbre de noeuds, M: Nbre d'arcs"
  read(*,*) n, m

  ! Initialisation de A
  Allocate(A(n,m))
  A=0

  ! Lecture de la topologie de A
  write(*,*) "Saisie des informations du Graphe par arc j (du Noued initial-> vers Noeud final)"
  write(*,*) "du Noeud initial sort la flêche et aboutit vers le Noeud final"
  do j=1,m
    read(*,*) i1, i2
    A(i1, j) = -1
    A(i2, j) = 1
  enddo

  ! Ecriture de la matrice A
  do i1=1,n
    Write(*,*) (A(i1, j), j=1,m)
  enddo
  end
