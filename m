Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A274318CCE9
	for <lists.bridge@lfdr.de>; Fri, 20 Mar 2020 12:25:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25D1E875B3;
	Fri, 20 Mar 2020 11:25:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KRQ_F6_vGguo; Fri, 20 Mar 2020 11:25:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05CB2875C9;
	Fri, 20 Mar 2020 11:25:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7CE2C1D85;
	Fri, 20 Mar 2020 11:25:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 969DCC089E
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9377688BBC
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sR3nUt1RI1Gg for <bridge@lists.linux-foundation.org>;
 Fri, 20 Mar 2020 11:25:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84CF9887EF
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 11:25:31 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id j188so364287lfj.11
 for <bridge@lists.linux-foundation.org>; Fri, 20 Mar 2020 04:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0PRt/VgUMfU+Km7oQtNyegEwmqK7TcrIJ3oC/T2znis=;
 b=HqqXCZ+SdFe/gAHYE9t/D7bpvda+FpPaKEvItX1IoiJunT267+8UDApVkDk0p7/R1S
 KA35FvbBnxLGKJb5Oyz3hYCc7kzWtcAD9G+6wqoXHXO7PR2JXDDclMVf1jzzeUl4Rv/A
 Nyf22eCit7mLJKOLc3UrmCIjI22VH05KbJHaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0PRt/VgUMfU+Km7oQtNyegEwmqK7TcrIJ3oC/T2znis=;
 b=ZTA2+IlnjnH1kmuFO7MH8Dkg8WKeCAX4BsEgPSZGHS5W8xRTgRF64j9cLo8VSRqztG
 cH0EGIEPTCJd8Z1aTXUA8K7xYTC64N/4BP+Y9lbvrUa3KZrk4a3VYlHEgnPXJ7PI2ZoT
 4MOb/sgEoUmCMcED5linAUbmFTe5Py+XUJ8bHirgbuNhVgHfGFpDBaIrvztDctTbzMLX
 mpuqKaMXTbCgEmzxZAmlROItkcBEX0VBfQcQa2JmSVqdV2FgRIGybsvu1IlvUkSHGzmB
 lcB9/VeHONTHhk7vv8B11DpaEOwlJ32mFQcgVTr9hpCB3HvVLRb0EemsRESb7o6UXn4K
 r4Cg==
X-Gm-Message-State: ANhLgQ0ZSIvOAgbXt0TImWu9APUFcx6NS+tJ5w7l4RAE/TD9+bI1n16c
 2Lp2BRrEWULrEgBPIB+/jGRC8g==
X-Google-Smtp-Source: ADFU+vueboEMNfTbHqOft9hp/WoMj83/40l67HvvW7qeeU6iS3NG6AB5qipsfQTAWThTJZKOFw8+zQ==
X-Received: by 2002:a19:550c:: with SMTP id n12mr5029902lfe.11.1584703529441; 
 Fri, 20 Mar 2020 04:25:29 -0700 (PDT)
Received: from localhost.localdomain (84-238-136-197.ip.btc-net.bg.
 [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id l17sm3808616lje.81.2020.03.20.04.25.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 04:25:28 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: netdev@vger.kernel.org
Date: Fri, 20 Mar 2020 13:23:01 +0200
Message-Id: <20200320112303.81904-1-nikolay@cumulusnetworks.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: [Bridge] [PATCH net-next 0/2] net: bridge: vlan options: nest the
	tunnel options
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

Hi,
After a discussion with Roopa about the new tunnel vlan option, she
suggested that we'll be adding more tunnel options and attributes, so
it'd be better to have them all grouped together under one main vlan
entry tunnel attribute instead of making them all main attributes. Since
the tunnel code was added in this net-next cycle and still hasn't been
released we can easily nest the BRIDGE_VLANDB_ENTRY_TUNNEL_ID attribute
in BRIDGE_VLANDB_ENTRY_TUNNEL_INFO and allow for any new tunnel
attributes to be added there. In addition one positive side-effect is
that we can remove the outside vlan info flag which controlled the
operation (setlink/dellink) and move it under a new nested attribute so
user-space can specify it explicitly.

Thus the vlan tunnel format becomes:
 [BRIDGE_VLANDB_ENTRY]
     [BRIDGE_VLANDB_ENTRY_TUNNEL_INFO]
         [BRIDGE_VLANDB_TINFO_ID]
         [BRIDGE_VLANDB_TINFO_CMD]
         ...

Thanks,
 Nik

Nikolay Aleksandrov (2):
  net: bridge: vlan options: nest the tunnel id into a tunnel info
    attribute
  net: bridge: vlan options: move the tunnel command to the nested
    attribute

 include/uapi/linux/if_bridge.h | 18 +++++++-
 net/bridge/br_vlan.c           |  2 +-
 net/bridge/br_vlan_options.c   | 76 +++++++++++++++++++++++++---------
 3 files changed, 74 insertions(+), 22 deletions(-)

-- 
2.25.1

