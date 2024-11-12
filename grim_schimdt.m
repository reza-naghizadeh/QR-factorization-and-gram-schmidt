clc;
clear;

%  initial matrix
% A full rank matrix 
% matrixA = [
%       1, 2, 4;
%       0, 0, 5;
%       0, 3, 6;
%   ];

% Not a full rank matrix
matrixA = [
  1, 0, 2, 3;
  2, 1, 0, 1;
  1, 1, 1, 6;
];

% Runnnig QR factorization /// 
% R equals to upperTriangle matrix /// 
% E equale to index of columns of R in matrixA ///
% 0 at the end shoes index number instead of a matrix(zero-one)
[Q, R, E] = qr(matrixA, 0);

% Find the absolute amount of diagonal of matrix R ///
% diagonalR equales to Mehvarha
diagonalR = abs(diag(R));

% Compute the number of  smaller elements of first element in diagR ///
% 1 is to find number of nonzeros ///
% last is the direction
numberOfDC = find(diagonalR <= diagonalR(1), 1, 'last');

% Sorting the E from 1 to r ///
% Eliminate the independent columns
idMatrixA=sort(E(1:numberOfDC));



% A matrix just to keep columns
matyrixAPrim = [];

% Save the dependet columns to a new matrix ///
% To run GS algorithm on dependet vectors
for i=idMatrixA
    matyrixAPrim = [matyrixAPrim, matrixA(:, i)];
end

% Chang places /// Nothing special
matrixA = matyrixAPrim;

% For loop to compute the number of columns
iteration = length(matrixA(1,:));

% Finding the first column q
q1 = matrixA(:,1) / norm(matrixA(:,1));

% A matrix to keep all q(s) we get from GS algorithm
QMatrix = (q1); 

% First loop to loop around the matrix
for i = 2:iteration
    x = 0;
    % Second loop to loop around Qmatrix
    for j = 1:i-1
        x = x + (dot(matrixA(:,i), QMatrix(:, j)) * QMatrix(:, j));
    end
    % Compute q prim
    qp = matrixA(:, i) - x;
    % Compute Q
    q = qp / norm(qp);
    % Add Q to Qmatrix
    QMatrix(:,i) = q;
end

% show the indeces for dependent columns
disp('Dependent columns indeces : ');
disp(idMatrixA);

% Show the full rank matrix
disp('Matrix with dependent columns : ')
disp(matrixA);

% show the matrix
disp('Q matrix : ');
disp(QMatrix);

% Plot the matrix
subplot(2, 1, 1);
plotv(matrixA);

subplot(2, 1, 2);
plotv(QMatrix);

       