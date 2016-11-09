FROM zhaoyao91/meteor-tools

COPY . /src

RUN /tools/install_base.sh \
  && /tools/install_node.sh 4.6.0 \
  && /tools/install_meteor.sh \
  && export METEOR_PACKAGE_DIRS=/src/packages \
  && /tools/build_app.sh /src/app /app \
  && /tools/prepare_app.sh /app \
  && /tools/cleanup.sh && rm -rf /src

CMD /tools/run_app.sh /app

EXPOSE 80