# -*- coding: utf-8 -*-
"""
This file is used to configure the test case.

"""
import os

def get_config():
    '''Returns the configuration structure for the test case.
    
    Returns
    -------
    config : dict()
    Dictionary contatinin configuration information.
    {
    'fmupath'  : string, location of model fmu
    'kpipath'  : string, location of kpi json
    'horizon'  : int, default forecast horizon in seconds
    'interval' : int, default forecast interval in seconds
    }
    
    '''
        
    config = {
    # Enter configuration information
    'fmupath'  : os.path.join(os.path.dirname(__file__),'models','wrapped.fmu'), 
    'step'     : 3600,
    'horizon'  : 86400,
    'interval' : 3600
    }
    
    return config
