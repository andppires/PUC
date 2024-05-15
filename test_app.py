import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_index(client):
    response = client.get('/')
    assert response.status_code == 400  # Verificar se o código de status é 400 (Bad Request)
    assert 'Olá, está preparado? Tudo está mudando!'.encode('utf-8') in response.data  # Verificar se a mensagem está na resposta