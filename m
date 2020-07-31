Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D30C3241208
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADD058795E;
	Mon, 10 Aug 2020 21:05:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-dtFXEvfI1B; Mon, 10 Aug 2020 21:05:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 796EF87856;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5912DC013C;
	Mon, 10 Aug 2020 21:05:26 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BA77C004D
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1459788668
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OuFxDPtEHsIJ for <bridge@lists.linux-foundation.org>;
 Fri, 31 Jul 2020 04:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 235BB88649
 for <bridge@lists.linux-foundation.org>; Fri, 31 Jul 2020 04:44:48 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p1so16256239pls.4
 for <bridge@lists.linux-foundation.org>; Thu, 30 Jul 2020 21:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0m2yM6Cpg0UMGl3JBQ2zB0c8Tu//2IzjG9Zoo6ooaqY=;
 b=hhzBOePGn+ma9oANopuKPFKyVnWTCROJvTFIWKIg+Xqaq5kTw1qad0OqKUKO0yEBSA
 XZtE3/VK2wQHKXopvsveJfyJMOmkUhUJHZ8rooShHKA3F9ArTAWFBJGQ1DZdI6j5V1Di
 Vjt9QY7XhAXpFW67bTCgoR+SUQJ/ikmjbsN3pweNd3qEO+Xjm9IFyo9Lwl+63bMKbw3L
 cSfs4kU+IifQyXiPn0C2XgvPqF2VTmco5iyGcfR8EOWetXpUYze9fuTzsVq1tM9iJNJv
 Lv+pC9TKLh4/uJkCHXTDyWGmF72NLPsK2Er4s8Kc4+V7wi0WxOPulBF1EYC3O5U/UbxU
 gjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0m2yM6Cpg0UMGl3JBQ2zB0c8Tu//2IzjG9Zoo6ooaqY=;
 b=cOQUP5869eLGmufd75/4y7uQYn73btEySgsxCEBWAq979Kr9M6rxULYKPb6v0n4SPt
 3XEFll2194ISfh4dpuG2dW78bBkQ74+bfS9JcAU7W3NzktgU0VaO7Cz5VI5zWK5Z2R6g
 ncc/mJ8PfhVbSEGCSIfilOfsxuEQ06jo92jUv0jQRyOvgEBhXhA215Shix41h2TKw+RG
 lp/lGKz01ywUfsdeCQIM5oJwXmqXI3dscHe4Rqu3bm2HCydwH68XeSljmK7ob7fwM7a7
 YPxCrGjvkV7VK+PWgrLBE1Ak+F8FGv7UrxAL8DRIHkq2XKwMjCO1Cd39u+edIuX1wQNf
 d5mQ==
X-Gm-Message-State: AOAM532gs14EPupKDyVv1r66tiiMWnoUtwq+F3/xRx6TK9s74gT3U2/5
 TMUrBhtXMefEb8YA1641LUY=
X-Google-Smtp-Source: ABdhPJzn0klKnpGXg9duE13S4iK7KOxGO4DDrmWAptlpFD3w+ps0taZ72vn3pQDp97OPm1/XtgYSQg==
X-Received: by 2002:a62:2ad6:: with SMTP id q205mr2063865pfq.316.1596170687650; 
 Thu, 30 Jul 2020 21:44:47 -0700 (PDT)
Received: from dali.ht.sfc.keio.ac.jp (dali.ht.sfc.keio.ac.jp. [133.27.170.2])
 by smtp.gmail.com with ESMTPSA id
 x6sm2329573pfd.53.2020.07.30.21.44.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jul 2020 21:44:47 -0700 (PDT)
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, KP Singh <kpsingh@chromium.org>,
 Roopa Prabhu <roopa@cumulusnetworks.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 David Ahern <dsahern@kernel.org>
Date: Fri, 31 Jul 2020 13:44:17 +0900
Message-Id: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 bridge@lists.linux-foundation.org, Yoshiki Komachi <komachi.yoshiki@gmail.com>
Subject: [Bridge] [RFC PATCH bpf-next 0/3] Add a new bpf helper for FDB
	lookup
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

This series adds a new bpf helper for doing FDB lookup in the kernel
tables from XDP programs. This helps users to accelerate Linux bridge
with XDP.

In the past, XDP generally required users to reimplement their own
networking functionalities with specific manners of BPF programming
by themselves, hindering its potential uses. IMO, bpf helpers to
access networking stacks in kernel help to mitigate the programming
costs because users reuse mature Linux networking feature more easily.

The previous commit 87f5fc7e48dd ("bpf: Provide helper to do forwarding
lookups in kernel FIB table") have already added a bpf helper for access
FIB in the kernel tables from XDP programs. As a next step, this series
introduces the API for FDB lookup. In the future, other bpf helpers for
learning and VLAN filtering will also be required in order to realize
fast XDP-based bridge although these are not included in this series.

Patch 1 adds new function for access FDB in the kernel tables via the
new bpf helper.

Patch 2 adds the bpf helper and 3 adds a sample program.

Yoshiki Komachi (3):
  net/bridge: Add new function to access FDB from XDP programs
  bpf: Add helper to do forwarding lookups in kernel FDB table
  samples/bpf: Add a simple bridge example accelerated with XDP

 include/linux/if_bridge.h      |  11 ++
 include/uapi/linux/bpf.h       |  28 ++++
 net/bridge/br_fdb.c            |  25 ++++
 net/core/filter.c              |  45 +++++++
 samples/bpf/Makefile           |   3 +
 samples/bpf/xdp_bridge_kern.c  | 129 ++++++++++++++++++
 samples/bpf/xdp_bridge_user.c  | 239 +++++++++++++++++++++++++++++++++
 scripts/bpf_helpers_doc.py     |   1 +
 tools/include/uapi/linux/bpf.h |  28 ++++
 9 files changed, 509 insertions(+)
 create mode 100644 samples/bpf/xdp_bridge_kern.c
 create mode 100644 samples/bpf/xdp_bridge_user.c

-- 
2.20.1 (Apple Git-117)

