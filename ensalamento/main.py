cd ~ && \
cd Projetos && \
mkdir controle_de_salas && \
pip install Django && \
django-admin startproject mysite controle_de_salas && \
cd controle_de_salas && \
python3 -m venv .venv && \
source .venv/bin/activate