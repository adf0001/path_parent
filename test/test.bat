
set savedCD="%CD%"
cd ../..
python -m path_parent_src.test.test
cd %savedCD%
pause