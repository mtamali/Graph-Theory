! A fortran95 program for G95
! By TAMALI Mohammed
! Program ThGraphe, for computing incidence matrix of graph (with OPEN statement)
! Created by Dec,4 2018 19:43
program main
  implicit none
  integer :: n, m, i1, i2, j
  integer, allocatable, dimension(:,:) :: A

  ! Lecture des données à partir d'un fichier texte
  open(10, file="data.dat")
  read(10,*) n, m

  ! Initialisation de A
  Allocate(A(n,m))
  A=0

  ! Lecture de la topologie de A
  do j=1,m
    read(10,*) i1, i2
    A(i1, j) = -1
    A(i2, j) = 1
  enddo

  ! Ecriture de la matrice A
  do i1=1,n
    Write(*,*) (A(i1, j), j=1,m)
  enddo
  end
