%	filename: Mesh_Command_Check
%	Test the mesh command
[X,Y] = meshgrid(-8:0.01:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
figure(1);
mesh(Z);
title('myMesh');
print(1,'-dmeta','myMesh');