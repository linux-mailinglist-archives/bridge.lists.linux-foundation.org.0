Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 852143F47C2
	for <lists.bridge@lfdr.de>; Mon, 23 Aug 2021 11:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6B64402FC;
	Mon, 23 Aug 2021 09:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5xDvQyJ6frB; Mon, 23 Aug 2021 09:39:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 63449402F2;
	Mon, 23 Aug 2021 09:39:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8510BC0025;
	Mon, 23 Aug 2021 09:39:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80141C000E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 09:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6049F6059E
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 09:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHJkiWDqFRm7 for <bridge@lists.linux-foundation.org>;
 Mon, 23 Aug 2021 09:12:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A03CF60597
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 09:12:44 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id d26so4873909wrc.0
 for <bridge@lists.linux-foundation.org>; Mon, 23 Aug 2021 02:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MaBl3rDtXESKyw3c63bPJNo7dg2UCFCV5le4IG3pXWo=;
 b=GbfZDaKnoXqjjhUOEGzo6BXu3i1+1SjQifDJV8eWlIzQ9++SCfEWOYg6yN7DqLP1Of
 NNunFBtWyyeoeiu2RuJa4zJgKCSAi88wl4IdP11bPwrelZfDo9IDr6H6OZxvH75Z1/QY
 J+9hkFB6rwPKuP9iZcF+rNCzJdW4SOBHQkDA8AOam9zc+qX0L7FHmwOMyR5YVM+uE8/8
 rDPAt3dXUUs1b2CVohBhOfiaTlDTXq/3xX03BPeStge8+5rNKBIHXQzZHdMoDbqa5GC2
 WYWzbbeb6KeCFlSR9kTe3l12UpPO5uxuFpqLfzoIanrPs7y5pJLW5PpRRyFb6YzQBcUz
 nSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MaBl3rDtXESKyw3c63bPJNo7dg2UCFCV5le4IG3pXWo=;
 b=Tk3FfQznQXJ/FLaf+h3+3w25cGQ2iszXVF0cc1QppPu9CYS+O0j+updiI2yRXS9TJO
 9VDZHGLg2PnR4pGl58QlKhOQOr9ImffWkGPW/ikl7Lr+Swv6Rvp4ECuUdCEdwU3Cf7EF
 v8PpR1w9RAzxjvw0GSs+R7DptD/1hNOlRiE5c8jA9BrZeAyxqa/zI0iqGOshyFE07jby
 zc4jBx5DwfdueqismOhg2shMy/SVtAXoxbbgrKEdADzwsQI9wfpOBH8HqDgyZjMIYOFC
 IQmRqeulozT2nz3LOrUhN9xOScKEKRDx91e7wwNOlbx5aKEGSemkwbmywg607Ayjww4v
 iH3w==
X-Gm-Message-State: AOAM531YnnjRk2JnvoucDhnfc4ofu3dDYimoy1NWOymbonzHVxQtH3Wv
 nh8r8bY/o946QKr9QpxoXIOjxfE20o/OsATqyMk=
X-Google-Smtp-Source: ABdhPJx/j/DPoXGfrlksrZGOAEgqBhPiJRxaX+EvIkOoQpY8+YhkH/EjBvpnNtDixZC8PEKf4CReE3qWZbywjl3kH70=
X-Received: by 2002:a05:6000:1043:: with SMTP id
 c3mr12475463wrx.144.1629709962826; 
 Mon, 23 Aug 2021 02:12:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210823061938.28240-1-l4stpr0gr4m@gmail.com>
 <13c1df91-be22-f4e0-cd61-7c99eb4e45f4@nvidia.com>
In-Reply-To: <13c1df91-be22-f4e0-cd61-7c99eb4e45f4@nvidia.com>
From: Kangmin Park <l4stpr0gr4m@gmail.com>
Date: Mon, 23 Aug 2021 18:12:31 +0900
Message-ID: <CAKW4uUyPdQ9hXeyjnC+5VS7zDaw+3sxy53HwOv2AxEZ7tngT=Q@mail.gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Aug 2021 09:39:22 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: replace
	__vlan_hwaccel_put_tag with skb_vlan_push
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

2021=EB=85=84 8=EC=9B=94 23=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 6:00, N=
ikolay Aleksandrov <nikolay@nvidia.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=
=B1:
>
> On 23/08/2021 09:19, Kangmin Park wrote:
>
> This changes behaviour though, I don't like changing code just for the sa=
ke of it.
> Perhaps the author had a reason to use hwaccel_put_tag instead. Before we=
 would
> just put hwaccel tag, now if there already is hwaccel tag we'll push it i=
nside
> the skb and then push the new tag in hwaccel. In fact I think you can eve=
n trigger
> the warning inside skb_vlan_push, so:
>
> Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>
>
>

Thanks for the review. I got it.
Then, how about cleanup by changing return type of
br_handle_ingress_vlan_tunnel()?
This function is only referenced in br_handle_frame(), and goto drop
when it return
non-zero. But, the ingress function always return 0, there is no
meaning for now.
If you think the cleanup is worth it, I'll send you a v2 patch.

Regards.
