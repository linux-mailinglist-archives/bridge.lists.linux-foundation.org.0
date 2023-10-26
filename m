Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8817D8779
	for <lists.bridge@lfdr.de>; Thu, 26 Oct 2023 19:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96A2E42497;
	Thu, 26 Oct 2023 17:21:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96A2E42497
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=Cmc5Gz1b
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HD-ubufnDx1s; Thu, 26 Oct 2023 17:21:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 64D3142493;
	Thu, 26 Oct 2023 17:21:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64D3142493
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 141EAC008C;
	Thu, 26 Oct 2023 17:21:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2D341C0032
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 17:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 066DB42493
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 17:21:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 066DB42493
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wG7ZbkUPo9bK for <bridge@lists.linux-foundation.org>;
 Thu, 26 Oct 2023 17:21:33 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25C20415D0
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 17:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25C20415D0
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-1c9bf22fe05so9074185ad.2
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 10:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1698340891;
 x=1698945691; darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LiGuJE8jLMnIocTKaNAa+F2ri7OFuPjhrH8s+cGGXVM=;
 b=Cmc5Gz1bSyFmisuia0vNjZoRmUAvpUgmQE1AVmOnm723BsUj4Tz+bHwT2yZbH3Zq4T
 5Elmr8WzykajtmaQB6yYAByKUn4XMek2X+Akz123PNZCLKGO+GtJgQfynxH6lyjB7mVP
 Bnk1w6Gv15R8RVUfpylsNpLOdrdJIvuTpvKUgKN+7KFRJJSMaJP77m8kM4FeHRB7W0GJ
 A2vuSAGeEHicTui6kEyyeCpmgme3K9dxw4q9s2exphjA67lFQWzG+MsE/Rh1DnW/3F0/
 nHgTUREZ4mqTBGxqk0aIrIAd++VKdLoqixVv+OPfJxESzJJ5pfIKDmGg+zGWY+6a52gZ
 l3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698340891; x=1698945691;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=LiGuJE8jLMnIocTKaNAa+F2ri7OFuPjhrH8s+cGGXVM=;
 b=eqBaglsH1DdmcEhpko8uYB4gfx2E/vbfSOvzSVD2B5ORGPSvIMnRswfmOu0WnBrcFj
 vrf7Z2yFV9SWBM13jW/QmxfQO4GAcCOeEj0TExJlhbjOz2JnmOcNb3uLz6VLQ+dSG48E
 8fnklyFyWRFhGWjcXAUsYh3uroficIhV7lUPKy9kTe63kjrLGg3Q7Oc6T3nwX9nzArL1
 Pd1Qsgwg3myZmUqwXPJk9WSK96Uyb2kGPnzGKOKJfTQ+hSJzaqeo+aZ3vA5zUeG8OV7n
 kynUSzmosjtU+wy3ZrPlZWXhiQQU8SjGHiiSfwzJRLTZZjaSBnvbuMzQN14eQMm9/nKu
 16Ew==
X-Gm-Message-State: AOJu0YwHCFwjuR21mTEDK4ou55+WVP2F/ESEodjqpVOCxkRbIwuBqakJ
 hGBhAG/E/m78luy+jyIz/abg+b8IN07GFWBwgFJN5w==
X-Google-Smtp-Source: AGHT+IEUq2fW+cSJWtQE8zBpWBVsXRJ2FH1D4WDEx8F2+EclahjUaXcJaP7nk3Kr9BboTlNiwD4w/A==
X-Received: by 2002:a17:903:1246:b0:1bc:6861:d746 with SMTP id
 u6-20020a170903124600b001bc6861d746mr87267plh.58.1698340891086; 
 Thu, 26 Oct 2023 10:21:31 -0700 (PDT)
Received: from hermes.local (204-195-126-68.wavecable.com. [204.195.126.68])
 by smtp.gmail.com with ESMTPSA id
 j6-20020a63ec06000000b0059b782e8541sm10773473pgh.28.2023.10.26.10.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 10:21:30 -0700 (PDT)
Date: Thu, 26 Oct 2023 10:21:29 -0700
To: razor@blackwall.org, roopa@nvidia.com
Message-ID: <20231026102129.2c4e1976@hermes.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org
Subject: [Bridge] Fw: [Bug 218047] New: linux network bridge kernel set
 group_fwd_mask 65535
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

The kernel intentionally does not allow forwarding of IEEE pause frames.
These need to be handled dropped in the bridge.
Any mask without bit 1 set should work.

Originally LACP, STP and MACPAUSE frames were always blocked and could not be
changed. The restriction was relaxed for LACP and STP frames.

Begin forwarded message:

Date: Thu, 26 Oct 2023 05:16:24 +0000
From: bugzilla-daemon@kernel.org
To: stephen@networkplumber.org
Subject: [Bug 218047] New: linux network bridge kernel set group_fwd_mask 65535


https://bugzilla.kernel.org/show_bug.cgi?id=218047

            Bug ID: 218047
           Summary: linux network bridge kernel set group_fwd_mask 65535
           Product: Networking
           Version: 2.5
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: ne-vlezay80@yandex.ru
        Regression: No

If trying set the parameter from network bridge? going error:

[root@arch user]# ip link set bridge0  type bridge group_fwd_mask 65535
RTNETLINK answers: Invalid argument

setting this parameter is desirable if the switching is routed to a separate
virtual machine on the hypervisor, and on the host it looks like this:

ip link add dev ns-switch.0 up mtu 16384 master bridge0 type veth peer name
host0 address $SWMAC  netns switch mtu 16384
ip link add dev ns-host1.0 up mtu 16384 master bridge0 type veth peer name
host0 netns host1 mtu 16384
ip link add dev ns-host2.0 up mtu 16384 master bridge0 type veth peer name
host0 netns host2 mtu 16384
ip link add dev ns-host3.0 up mtu 16384 master bridge0 type veth peer name
host0 netns host3 mtu 16384
ip link add dev ns-host4.0 up mtu 16384 master bridge0 type veth peer name
host0 netns host4 mtu 16384

tc qdisc add dev ns-switch.0 handle ffff: ingress
tc qdisc add dev ns-host1.0 handle ffff: ingress
tc qdisc add dev ns-host2.0 handle ffff: ingress
tc qdisc add dev ns-host3.0 handle ffff: ingress
tc qdisc add dev ns-host4.0 handle ffff: ingress

tc qdisc add dev gt-ll0 handle ffff: ingress
tc qdisc add dev gt-ll0 handle 1: root htb default 10

tc qdisc add dev ns-switch.0 handle 1: root htb default 10
tc qdisc add dev ns-host1.0 handle 1: root htb default 10
tc qdisc add dev ns-host2.0 handle 1: root htb default 10
tc qdisc add dev ns-host3.0 handle 1: root htb default 10
tc qdisc add dev ns-host4.0 handle 1: root htb default 10


tc filter add dev ns-host1.0 parent ffff: prio 9 protocol all flower dst_mac
01:00:00:00:00:00/8 action vlan push id 10 action mirred egress redirect dev
gt-ll0
tc filter add dev ns-host2.0 parent ffff: prio 9 protocol all flower dst_mac
01:00:00:00:00:00/8 action vlan push id 11 action mirred egress redirect dev
gt-ll0
tc filter add dev ns-host3.0 parent ffff: prio 9 protocol all flower dst_mac
01:00:00:00:00:00/8 action vlan push id 12 action mirred egress redirect dev
gt-ll0
tc filter add dev ns-host4.0 parent ffff: prio 9 protocol all flower dst_mac
01:00:00:00:00:00/8 action vlan push id 13 action mirred egress redirect dev
gt-ll0

tc filter add dev ns-host1.0 parent ffff: prio 10 protocol all matchall action
vlan push id 10 
tc filter add dev ns-host2.0 parent ffff: prio 10 protocol all matchall action
vlan push id 11
tc filter add dev ns-host3.0 parent ffff: prio 10 protocol all matchall action
vlan push id 12
tc filter add dev ns-host4.0 parent ffff: prio 10 protocol all matchall action
vlan push id 13

tc filter add dev ns-host1.0 parent 1: prio 65535 protocol all matchall action
drop
tc filter add dev ns-host1.0 parent 1: prio 1 protocol 802.1Q flower vlan_id 10
action vlan pop

tc filter add dev ns-host2.0 parent 1: prio 65535 protocol all matchall action
drop
tc filter add dev ns-host2.0 parent 1: prio 1 protocol 802.1Q flower vlan_id 11
action vlan pop

tc filter add dev ns-host3.0 parent 1: prio 65535 protocol all matchall action
drop
tc filter add dev ns-host3.0 parent 1: prio 1 protocol 802.1Q flower vlan_id 12
action vlan pop

tc filter add dev ns-host4.0 parent 1: prio 65535 protocol all matchall action
drop
tc filter add dev ns-host4.0 parent 1: prio 1 protocol 802.1Q flower vlan_id 13
action vlan pop 

the config example from be network lab.

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
