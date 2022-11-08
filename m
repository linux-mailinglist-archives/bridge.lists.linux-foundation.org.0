Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C69A621B5C
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 19:01:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02A2A40297;
	Tue,  8 Nov 2022 18:01:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02A2A40297
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=hZMmHshS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQZpCYHfb5UD; Tue,  8 Nov 2022 18:01:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 89325401A1;
	Tue,  8 Nov 2022 18:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89325401A1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 212EAC0077;
	Tue,  8 Nov 2022 18:01:23 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 614A1C002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2ED1B40297
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2ED1B40297
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQQg7zwFFHp2 for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 18:01:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 752AC40116
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 752AC40116
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 18:01:20 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id z17so3239986qki.11
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 10:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=wDrq2KVoUCxkhxO6WpTTyZbqFCb6qloqTFLoADCq7ok=;
 b=hZMmHshSNADKZamj2Bl4ylyYFEWjU0kz6N9zuO1+U0zleujiKgoM4TX0bM6OZUqaEm
 pQSgJbEgzt5ZYsl9FcgDapOpJe7HScO3RHf6B2R6hICdI7zpCNaNDqKbCJ1CyH76TRk/
 4ztAez3Nio3lp9AX6bo+xtsZX8SZPPP8P0oz//bM1WfdQ94tgxZEwVJ67QdA7mXnV7bO
 c1Q2v3yUADNOyalJSL1ZKqXE42AQR0n8A85gW1qgi04Jj+YO5F2o10JDLw4qtwm90P7c
 PM1A596+wCzDo28uMju9vCNyIFX8PlcHqsgzzC5WiP0KduUyOVhANmWdN1JF5yEVyg3Y
 StDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=wDrq2KVoUCxkhxO6WpTTyZbqFCb6qloqTFLoADCq7ok=;
 b=Z/8BoGHa5xdOCNy/bQklhgERzVWOPxRZlBJTHgJN+aWvJV4EKWpyJTfcK1lODNQPMk
 NbITBx+HB2yDuPHAuHq87PHf7jJL5Sxp0dWJU3f3feL/r+He9hVyNmA0E9tz8J555Yyo
 hvMeN5GEYSC+2SRQevTCTQpW/HK2ZYCbbLpAEaBzEkNdtUsE06R1RoMrJ29T7zbLNR2f
 YUb3AZVvqWKivNZkRFl5szmvGZhsBS3IPPNpykRYKX7qsv5+pYwa8m1IMrMWR/G9Udkn
 piRSHnIt6lid7gP4qX9Fr8YE/1V019pUJCg0CQcmfrGt45uCTyx23ghz9jigc6P04MOb
 oJtw==
X-Gm-Message-State: ACrzQf1ou7LTUaXmKYelzKrpvGK9vMcl16M+cOtGhGc1T0n9lT2rV2QB
 MHRvzzssyE2C7SU+7F1+jul06w==
X-Google-Smtp-Source: AMsMyM6V3a1bvL7jFhwBqAbRZpo9uWNWSNj6kJ3C29vh48hZBL/Ba/02cilmAWsAe5UKEFttiCKbXg==
X-Received: by 2002:a37:e30d:0:b0:6fa:6241:c858 with SMTP id
 y13-20020a37e30d000000b006fa6241c858mr24147792qki.553.1667930479206; 
 Tue, 08 Nov 2022 10:01:19 -0800 (PST)
Received: from [127.0.0.1] ([190.167.198.156])
 by smtp.gmail.com with ESMTPSA id
 o16-20020a05620a2a1000b006cbe3be300esm10284211qkp.12.2022.11.08.10.01.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Nov 2022 10:01:18 -0800 (PST)
Date: Tue, 08 Nov 2022 14:01:17 -0400
From: Nikolay Aleksandrov <razor@blackwall.org>
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ivan Vecera <ivecera@redhat.com>,
 netdev@vger.kernel.org
User-Agent: K-9 Mail for Android
In-Reply-To: <b266dcf6d647684a10984d12f98549f93fd378ab.1667902754.git.petrm@nvidia.com>
References: <cover.1667902754.git.petrm@nvidia.com>
 <b266dcf6d647684a10984d12f98549f93fd378ab.1667902754.git.petrm@nvidia.com>
Message-ID: <31C46FC0-3ABB-4FD1-B44B-D467C81C6340@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 Roopa Prabhu <roopa@nvidia.com>, mlxsw@nvidia.com,
 Jiri Pirko <jiri@nvidia.com>, "Hans J . Schultz" <netdev@kapio-technology.com>
Subject: Re: [Bridge] [PATCH net-next 01/15] bridge: switchdev: Let device
	drivers determine FDB offload indication
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

On 8 November 2022 06:47:07 GMT-04:00, Petr Machata <petrm@nvidia=2Ecom> wr=
ote:
>From: Ido Schimmel <idosch@nvidia=2Ecom>
>
>Currently, FDB entries that are notified to the bridge via
>'SWITCHDEV_FDB_ADD_TO_BRIDGE' are always marked as offloaded=2E With MAB
>enabled, this will no longer be universally true=2E Device drivers will
>report locked FDB entries to the bridge to let it know that the
>corresponding hosts required authorization, but it does not mean that
>these entries are necessarily programmed in the underlying hardware=2E
>
>Solve this by determining the offload indication based of the
>'offloaded' bit in the FDB notification=2E
>
>Signed-off-by: Ido Schimmel <idosch@nvidia=2Ecom>
>Reviewed-by: Petr Machata <petrm@nvidia=2Ecom>
>Signed-off-by: Petr Machata <petrm@nvidia=2Ecom>
>---
> net/bridge/br=2Ec | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Acked-by: Nikolay Aleksandrov <razor@blackwall=2Eorg>

>diff --git a/net/bridge/br=2Ec b/net/bridge/br=2Ec
>index 96e91d69a9a8=2E=2E145999b8c355 100644
>--- a/net/bridge/br=2Ec
>+++ b/net/bridge/br=2Ec
>@@ -172,7 +172,7 @@ static int br_switchdev_event(struct notifier_block *=
unused,
> 			break;
> 		}
> 		br_fdb_offloaded_set(br, p, fdb_info->addr,
>-				     fdb_info->vid, true);
>+				     fdb_info->vid, fdb_info->offloaded);
> 		break;
> 	case SWITCHDEV_FDB_DEL_TO_BRIDGE:
> 		fdb_info =3D ptr;

