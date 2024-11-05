#!/usr/bin/env python3
"""
Module that inserts a new document in a collection
"""
import pymongo


def insert_school(mongo_collection, **kwargs):
    """
    Function that inserts a new document in a collection

    Args:
        mongo_collection: a pymongo collection object
        **kwargs: keyword arguments

    Returns:
        the _id of the new document
    """
    inserted_data = mongo_collection.insert_one(kwargs)
    return inserted_data.inserted_id
