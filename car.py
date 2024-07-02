class Car:
    body_types = ['suv', 'crossover', 'sedan', 'hatchback', 'sport']
    engine_types = ['electric', 'gas', 'diesel', 'hybrid']

    def __init__(self, body_type, engine_type):
        if body_type not in body_types:
            raise ValueError('Invalid body type.')
        if engine_type not in engine_types:
            raise ValueError('Invalid engine type.')
        self.body_type = body_type
        self.engine_type = engine_type

    def describe_car(self):
        return f'{engine_type} {body_type}'




class Subaru(Car):
    def __init__(self, body_type, engine_type, year, model, trim=None):
        self.year = year
        self.model = model
        self.trim = trim
        Car.__init__(self, body_type, engine_type)
        # super().__init__(body_type, engine_type)

    def describe(self):
        return f'{self.year} {self.model} {self.trim} ({self.describe_car()})'