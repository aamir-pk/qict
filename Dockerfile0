FROM bluerabbit/ruby-oci8

#RUN mkdir /home/circleci/dashboards
#WORKDIR /home/circleci/dashboards
#ADD . /home/circleci/dashboards
#RUN sudo chown -R circleci /home/circleci/dashboards
#RUN sudo chmod 777 /home/circleci/dashboards -R

RUN sudo mkdir /dashboards
WORKDIR /dashboards
ADD . /dashboards
RUN sudo chmod 777 /dashboards -R
RUN bundle install

EXPOSE 3000
ENTRYPOINT ["rails"]
CMD ["server", "-b", "0.0.0.0"]
