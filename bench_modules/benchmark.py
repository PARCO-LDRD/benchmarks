from abc import ABC, abstractmethod

class BaseBenchmark(ABC):
  def __init__(self, name):
    self._name = name

  @property
  def name(self):
    return self._name

  @name.setter
  def name(self, value):
    self._name = value

  @property
  @abstractmethod
  def build(self):
    pass

  @property
  @abstractmethod
  def clean(self):
    pass

  @property
  @abstractmethod
  def clean(self):
    pass

  @property
  @abstractmethod
  def inputs(self):
    pass

  @property
  @abstractmethod
  def executable(self):
    pass

  @property
  @abstractmethod
  def root(self):
    pass

  @abstractmethod
  def getTime(self,stdout):
    pass

  @abstractmethod
  def extractInputFromCMD(self, cmd):
    pass
