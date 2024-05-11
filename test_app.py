import pytest
from app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_index(client):
    response = client.get('/')
    assert response.status_code == 200
    assert 'Olá, está preparado? Tudo está mudando!' in response.data.decode('utf-8')
    