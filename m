Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E784DC30D
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 10:39:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56121612A9;
	Thu, 17 Mar 2022 09:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6X84FsFrz11t; Thu, 17 Mar 2022 09:39:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id EA378612B1;
	Thu, 17 Mar 2022 09:39:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A1507C0082;
	Thu, 17 Mar 2022 09:39:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 205B6C001A
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6446418A3
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SIzcq1pUHNHd for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 09:39:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C128241892
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 09:39:29 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id s25so6458548lji.5
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 02:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:organization:content-transfer-encoding;
 bh=Rzca7XlJ3nGkRZRrrr3Av3J4sdu0DWRxi2d5ZWbv6Pg=;
 b=qMJYU9bvcIwzFO/6T3IGHQlUDY2nf8R0HceNbhjVGNu30qxD2oLqM33Q7BtWqV5gjX
 rnPbltg8xm5RjaYcPIkPW8ZpJOFCa4bvN1PrySyJYrgYyANBHmgXzN+4IDabjbOi0Haj
 3JLY8qYTUQYuj8nwjl2ZzH1yGO70LoA4FbDxuMmnu15N6/qSsKLepCeFgPoX1/8sOnpy
 k/GTyj2UO7qABKzgz40LSXS7pqIM4Cdn9r9c8l9JOdpflybjkaI15regv2D9YHBWMEeb
 qRnUH8zS12ZOATaCaesIlZUSY83wifNQEawIvw0JyoYv8l/NwVuNlFxsWNoJB0zAm/NW
 tdSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:organization:content-transfer-encoding;
 bh=Rzca7XlJ3nGkRZRrrr3Av3J4sdu0DWRxi2d5ZWbv6Pg=;
 b=Kflp7AofsM3BG20Zu5YOGmmstZPsxeCunkKO5MXCjTVMmvwX3EaYMfRNy27Kl+mu59
 /tq80iFPItXKpNLTU2u6Ta+8zbuFRvIIkPl2IY4cczMY4AfXHwrIlNtwgh6a6ZxUR5E6
 riYsQ1dIab5cKBcZyXyKQ6+i+dwhYtckfaKrvqNaiKGQLOSzUscARFzphp0DnpHWo60b
 3E0xr74aLwkL3QXA/+ae9iqb9oPVMohvJ3IHS0X3r28i2xXiljr5C9cOHunLoMUxrJaz
 2IALNxdlsQd6KxaVT9SAWmK+3EZvgaGB1rUoMo7mvoIJjOmDC3qXrxKBYYdo9iX+TQlX
 98Hg==
X-Gm-Message-State: AOAM532BbBHY4iVD5y+Xmqps2iBJu9MtATTccmaBvNMG8wBdjz1+eXCi
 l3Ba82ZUADvSl++nq2+tEBY=
X-Google-Smtp-Source: ABdhPJyn9gqazX/j3OpRrVKTgyvCZMLd5NLNYKb/X05EDTG7+95nNuZlXHbmzlHFY1TmyL4xEx4z/g==
X-Received: by 2002:a05:651c:2008:b0:248:49e:c105 with SMTP id
 s8-20020a05651c200800b00248049ec105mr2332459ljo.327.1647509967749; 
 Thu, 17 Mar 2022 02:39:27 -0700 (PDT)
Received: from wse-c0127.beijerelectronics.com ([208.127.141.29])
 by smtp.gmail.com with ESMTPSA id
 w13-20020a2e998d000000b002496199495csm113479lji.55.2022.03.17.02.39.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Mar 2022 02:39:27 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: davem@davemloft.net,
	kuba@kernel.org
Date: Thu, 17 Mar 2022 10:39:02 +0100
Message-Id: <20220317093902.1305816-5-schultz.hans+netdev@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Organization: Westermo Network Technologies AB
Content-Transfer-Encoding: 8bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>
Subject: [Bridge] [PATCH v2 net-next 4/4] selftests: forwarding: add test of
	MAC-Auth Bypass to locked port tests
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

Verify that the MAC-Auth mechanism works by adding a FDB entry with the
locked flag set. denying access until the FDB entry is replaced with a
FDB entry without the locked flag set.

Signed-off-by: Hans Schultz <schultz.hans+netdev@gmail.com>
---
 .../net/forwarding/bridge_locked_port.sh      | 29 ++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
index 6e98efa6d371..2f9519e814b6 100755
--- a/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
+++ b/tools/testing/selftests/net/forwarding/bridge_locked_port.sh
@@ -1,7 +1,7 @@
 #!/bin/bash
 # SPDX-License-Identifier: GPL-2.0
 
-ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan"
+ALL_TESTS="locked_port_ipv4 locked_port_ipv6 locked_port_vlan locked_port_mab"
 NUM_NETIFS=4
 CHECK_TC="no"
 source lib.sh
@@ -170,6 +170,33 @@ locked_port_ipv6()
 	log_test "Locked port ipv6"
 }
 
+locked_port_mab()
+{
+	RET=0
+	check_locked_port_support || return 0
+
+	ping_do $h1 192.0.2.2
+	check_err $? "MAB: Ping did not work before locking port"
+
+	bridge link set dev $swp1 locked on
+	bridge link set dev $swp1 learning on
+
+	ping_do $h1 192.0.2.2
+	check_fail $? "MAB: Ping worked on port just locked"
+
+	if ! bridge fdb show | grep `mac_get $h1` | grep -q "locked"; then
+		RET=1
+		retmsg="MAB: No locked fdb entry after ping on locked port"
+	fi
+
+	bridge fdb del `mac_get $h1` dev $swp1 master
+	bridge fdb add `mac_get $h1` dev $swp1 master static
+
+	ping_do $h1 192.0.2.2
+	check_err $? "MAB: Ping did not work with fdb entry without locked flag"
+
+	log_test "Locked port MAB"
+}
 trap cleanup EXIT
 
 setup_prepare
-- 
2.30.2

