#!/usr/bin/env python3
"""
Module that lists all documents in a mongo db collection
"""
import pymongo


def list_all(mongo_collection):
    """
    Function that lists all documents in a collection

    Args:
        mongo_collection: a pymongo collection object

    Returns:
        all documents in the collection
    """
    if not mongo_collection:
        return []
    return mongo_collection.find()
