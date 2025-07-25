Hello everyone,

This repository contains my attempt at building a macOS application using the PJSIP library. I wanted to share my experience to help others who might be considering a similar path.

Inside this repository, you will find the PJSIP library provided in several formats: as a universal binary for macOS, and as separate libraries pre-compiled for both Apple Silicon and Intel architectures.

While PJSIP is a powerful and flexible library, integrating it directly into a modern macOS application (especially with Swift/SwiftUI) presents significant challenges. It requires writing a custom C/Objective-C wrapper, which is a complex, time-consuming, and potentially expensive task that demands a high level of expertise.

Based on my experience, here are a few alternatives you might consider for developing a SIP application on macOS:

Ready-made SDKs (e.g., Linkphone SDK): While these can simplify development, I found that some, like Linkphone, have limited documentation, which can create its own set of problems. I would cautiously recommend this route.

PortSIP SDK: In my opinion, this is an ideal choice for this task. I found its SDK to be straightforward to integrate, and writing functions with it was much simpler compared to other solutions.

I hope sharing my journey and findings can help you make a more informed decision for your project.






[![CI Linux](https://github.com/pjsip/pjproject/actions/workflows/ci-linux.yml/badge.svg)](https://github.com/pjsip/pjproject/actions/workflows/ci-linux.yml)
[![CI Mac](https://github.com/pjsip/pjproject/actions/workflows/ci-mac.yml/badge.svg)](https://github.com/pjsip/pjproject/actions/workflows/ci-mac.yml)
[![CI Windows](https://github.com/pjsip/pjproject/actions/workflows/ci-win.yml/badge.svg)](https://github.com/pjsip/pjproject/actions/workflows/ci-win.yml)
[![Bitrise iOS](https://img.shields.io/bitrise/70e79dc5-cae8-4cb7-a6cd-9a5bd3f3270f?token=tnXk2DZ71Zmd0qDMhFgiBg&label=CI%20iOS)](https://app.bitrise.io/app/70e79dc5-cae8-4cb7-a6cd-9a5bd3f3270f)
[![Bitrise Android](https://img.shields.io/bitrise/e4b6aade20ea9eb3?token=byZU0e1BJn_VYg2YuAs-cA&label=CI%20Android)](https://app.bitrise.io/app/e4b6aade20ea9eb3)
<BR>
[![OSS-Fuzz](https://oss-fuzz-build-logs.storage.googleapis.com/badges/pjsip.png)](https://oss-fuzz-build-logs.storage.googleapis.com/index.html#pjsip)
[![Coverity-Scan](https://scan.coverity.com/projects/905/badge.svg)](https://scan.coverity.com/projects/pjsip)
[![CodeQL](https://github.com/pjsip/pjproject/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/pjsip/pjproject/actions/workflows/codeql-analysis.yml)
[![docs.pjsip.org](https://readthedocs.org/projects/pjsip/badge/?version=latest)](https://docs.pjsip.org/en/latest/)


# PJSIP

PJSIP is a free and open source multimedia communication library written in C with high level API in C, C++, Java, C#, and Python languages. It implements standard based protocols such as SIP, SDP, RTP, STUN, TURN, and ICE. It combines signaling protocol (SIP) with rich multimedia framework and NAT traversal functionality into high level API that is portable and suitable for almost any type of systems ranging from desktops, embedded systems, to mobile handsets.

## Getting PJSIP

- Main repository: https://github.com/pjsip/pjproject
- Releases: https://github.com/pjsip/pjproject/releases


## Documentation

Main documentation site: https://docs.pjsip.org

Table of contents:

- Overview
  - [Overview](https://docs.pjsip.org/en/latest/overview/intro.html)
  - [Features (Datasheet)](https://docs.pjsip.org/en/latest/overview/features.html)
  - [License](https://docs.pjsip.org/en/latest/overview/license.html)
- **Getting started**
  - [Getting PJSIP](https://docs.pjsip.org/en/latest/get-started/getting.html)
  - [General Guidelines](https://docs.pjsip.org/en/latest/get-started/general_guidelines.html)
  - [Android](https://docs.pjsip.org/en/latest/get-started/android/index.html)
  - [iPhone](https://docs.pjsip.org/en/latest/get-started/ios/index.html)
  - [Mac/Linux/Unix](https://docs.pjsip.org/en/latest/get-started/posix/index.html)
  - [Windows](https://docs.pjsip.org/en/latest/get-started/windows/index.html)
  - [Windows Phone](https://docs.pjsip.org/en/latest/get-started/windows-phone/index.html)
- PJSUA2 - High level API guide
  - [Introduction](https://docs.pjsip.org/en/latest/pjsua2/intro.html)
  - [Building PJSUA2](https://docs.pjsip.org/en/latest/pjsua2/building.html)
  - [General concepts](https://docs.pjsip.org/en/latest/pjsua2/general_concept.html)
  - [Hello world!](https://docs.pjsip.org/en/latest/pjsua2/building.html)
  - [Using PJSUA2](https://docs.pjsip.org/en/latest/pjsua2/using/index.html)
  - [Sample applications](https://docs.pjsip.org/en/latest/pjsua2/samples.html)
- Specific guides
  - [Audio](https://docs.pjsip.org/en/latest/specific-guides/index.html#audio)
  - [Audio Troubleshooting](https://docs.pjsip.org/en/latest/specific-guides/index.html#audio-troubleshooting)
  - [Build and integration](https://docs.pjsip.org/en/latest/specific-guides/index.html#build-integration)
  - [Development and programming](https://docs.pjsip.org/en/latest/specific-guides/index.html#development-programming)
  - [Media](https://docs.pjsip.org/en/latest/specific-guides/index.html#media)
  - [Network and NAT](https://docs.pjsip.org/en/latest/specific-guides/index.html#network-nat)
  - [Performance and footprint](https://docs.pjsip.org/en/latest/specific-guides/index.html#performance-footprint)
  - [Security](https://docs.pjsip.org/en/latest/specific-guides/index.html#security)
  - [SIP](https://docs.pjsip.org/en/latest/specific-guides/index.html#sip)
  - [Video](https://docs.pjsip.org/en/latest/specific-guides/index.html#video)
  - [Other](https://docs.pjsip.org/en/latest/specific-guides/index.html#other)
- API reference
  - [PJSUA2](https://docs.pjsip.org/en/latest/api/pjsua2/index.html) - high level API (Java/C#/Python/C++/swig)
  - [PJSUA-LIB](https://docs.pjsip.org/en/latest/api/pjsua-lib/index.html) - high level API (C)
  - [PJSIP](https://docs.pjsip.org/en/latest/api/pjsip/index.html) - SIP stack
  - [PJMEDIA](https://docs.pjsip.org/en/latest/api/pjmedia/index.html) - media framework
  - [PJNATH](https://docs.pjsip.org/en/latest/api/pjnath/index.html) - NAT traversal helper
  - [PJLIB-UTIL](https://docs.pjsip.org/en/latest/api/pjlib-util/index.html) - utilities
  - [PJLIB](https://docs.pjsip.org/en/latest/api/pjlib/index.html) - portable library

