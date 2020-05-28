# coding=utf_8

import os

def get_server_port():
    return int(os.getenv('SERVER_PORT', 3002))

def get_security_server_url():
    return os.getenv('AUTH_SERVICE_URL', "localhost")

def get_security_server_port():
    return int(os.getenv('AUTH_SERVICE_PORT', 3000))

def get_rabbit_server_url():
    return os.getenv('RABBIT_URL', "localhost")

def get_database_server_url():
    return os.getenv('MONGO_URL', "localhost")

def get_database_server_port():
    return int(os.getenv('MONGO_PORT', 27017))
