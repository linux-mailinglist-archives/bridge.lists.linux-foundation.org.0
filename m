Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0359621B61
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 19:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 303EB404BF;
	Tue,  8 Nov 2022 18:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 303EB404BF
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=5m4zQpr7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2sbEAQFhigLu; Tue,  8 Nov 2022 18:02:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CB992401A1;
	Tue,  8 Nov 2022 18:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB992401A1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D91DC0077;
	Tue,  8 Nov 2022 18:02:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 907F7C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78931404BF
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78931404BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PmW6-p3RnP5 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 18:02:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4436401A1
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4436401A1
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:02:08 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id l2so9080609qtq.11
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 10:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=P0Vrqb0dV10ZcDKDMyGy8PmlBFfLVXxuYtbQVL//Jq0=;
 b=5m4zQpr7pvvBisJk52ZcXiS7iceaQyBjJq4K1ZygUmcjudl74qEXu+WlE0WagbOVgh
 le1LtiT0xTvcc1YUvxmUcvxYS4K4ocQLV01A+WtNUoqfHQE+Zno+h2XCQDT4ybc8AVl7
 qtbvjGo2ZzO52aS+yaNu2vEKXTX+RWN7FYxC/kXa4FjNXfrlL+/F22Lixve/lqMiohRf
 Ok5ZL8E7gpozkChiriUTC1adI38mXus30k3ykmyEM35hjnYoc6adziJdWS7S2ziqA9VM
 WzS2te2ucIkO1aOcMzhT3MHC09x6XoPlrdBK0wPoFHpMqAUDAKK44ySyGuskRg+Nosjs
 rETw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=P0Vrqb0dV10ZcDKDMyGy8PmlBFfLVXxuYtbQVL//Jq0=;
 b=DHQMavQUSFRcTtulTOY6ptAqNOhLQ6KTpnFcT3zWsfbFUav4ItPufUAmuWk+7ssCxh
 Zt9G2nsgpPgqgyeG1Q/lCetGCHBTlS/uxFXA3OkgoG4ETEpBZmDdnFGjPImac6l9IyWv
 vMIKhGMuE+P2xdWYkhuJ5upD5j6yESQGiq22SXVPcA6ah3rCfJMbw6O8OO+bX6Vg9Ttu
 3bjKL5x0PMpR6plDhJTetmsQCFVWgJ3HQxeFMnv9ilV5zwL+qYWMyeOFvA9xPAHJVY65
 e/e4gZHbIdwA+Pq6jE4VmcT1xqxGYtugeZtCy4U5b/exDTnJvw+pQDxfNghyZFX0dmUA
 fU5Q==
X-Gm-Message-State: ACrzQf0Yd0AtnoCJ8BOQY7YxJLnvRr2G7IqiEMw5duOSTQmeTUjdxmUG
 vkTkV4u2FHQHtOG9PPQFljtjSA==
X-Google-Smtp-Source: AMsMyM5GaFAFqupNFpt/qtHCvRjyH0aRY/7ewIKqozGJ7dGEOXK2YfENy5jfOxf22H4ykdUEhaylMw==
X-Received: by 2002:a05:622a:250e:b0:3a5:279d:efc2 with SMTP id
 cm14-20020a05622a250e00b003a5279defc2mr37428703qtb.551.1667930527530; 
 Tue, 08 Nov 2022 10:02:07 -0800 (PST)
Received: from [127.0.0.1] ([190.167.198.156])
 by smtp.gmail.com with ESMTPSA id
 l19-20020a05620a28d300b006ec771d8f89sm10120601qkp.112.2022.11.08.10.02.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Nov 2022 10:02:07 -0800 (PST)
Date: Tue, 08 Nov 2022 14:02:05 -0400
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 netdev@vger.kernel.org
User-Agent: K-9 Mail for Android
In-Reply-To: <2db3f3f1eff65e42c92a8e3a5626d64f46e68edc.1667902754.git.petrm@nvidia.com>
References: <cover.1667902754.git.petrm@nvidia.com>
 <2db3f3f1eff65e42c92a8e3a5626d64f46e68edc.1667902754.git.petrm@nvidia.com>
Message-ID: <E8F3691A-66B2-49F6-93AB-3C175CC559F1@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: Re: [Bridge] [PATCH net-next 03/15] bridge: switchdev: Reflect MAB
	bridge port flag to device drivers
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

On 8 November 2022 06:47:09 GMT-04:00, Petr Machata <petrm@nvidia=2Ecom> wr=
ote:
>From: Ido Schimmel <idosch@nvidia=2Ecom>
>
>Reflect the 'BR_PORT_MAB' flag to device drivers so that:
>
>* Drivers that support MAB could act upon the flag being toggled=2E
>* Drivers that do not support MAB will prevent MAB from being enabled=2E
>
>Signed-off-by: Ido Schimmel <idosch@nvidia=2Ecom>
>Reviewed-by: Petr Machata <petrm@nvidia=2Ecom>
>Signed-off-by: Petr Machata <petrm@nvidia=2Ecom>
>---
>
>Notes:
>    v1:
>    * New patch=2E
>
> net/bridge/br_switchdev=2Ec | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Acked-by: Nikolay Aleksandrov <razor@blackwall=2Eorg>

>diff --git a/net/bridge/br_switchdev=2Ec b/net/bridge/br_switchdev=2Ec
>index 8a0abe35137d=2E=2E7eb6fd5bb917 100644
>--- a/net/bridge/br_switchdev=2Ec
>+++ b/net/bridge/br_switchdev=2Ec
>@@ -71,7 +71,7 @@ bool nbp_switchdev_allowed_egress(const struct net_brid=
ge_port *p,
> }
>=20
> /* Flags that can be offloaded to hardware */
>-#define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | \
>+#define BR_PORT_FLAGS_HW_OFFLOAD (BR_LEARNING | BR_FLOOD | BR_PORT_MAB |=
 \
> 				  BR_MCAST_FLOOD | BR_BCAST_FLOOD | BR_PORT_LOCKED | \
> 				  BR_HAIRPIN_MODE | BR_ISOLATED | BR_MULTICAST_TO_UNICAST)
>=20

