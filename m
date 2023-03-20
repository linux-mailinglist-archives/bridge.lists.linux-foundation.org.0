Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB466C1DCE
	for <lists.bridge@lfdr.de>; Mon, 20 Mar 2023 18:25:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7349417B3;
	Mon, 20 Mar 2023 17:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7349417B3
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Jk98EvIs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8oSWDCNFBPnF; Mon, 20 Mar 2023 17:25:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 05746417B4;
	Mon, 20 Mar 2023 17:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05746417B4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B1CEC0089;
	Mon, 20 Mar 2023 17:25:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 83555C0032
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 506DB81B48
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 506DB81B48
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Jk98EvIs
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z11NLgdB7iQG for <bridge@lists.linux-foundation.org>;
 Mon, 20 Mar 2023 17:25:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6D5D819BE
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6D5D819BE
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:25:29 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 lr16-20020a17090b4b9000b0023f187954acso13208603pjb.2
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 10:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679333129;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TFjbf1hqGKTeNG29GCna0olkfNIXH80B4W/+/wvwthc=;
 b=Jk98EvIs3B0BqU2BquE5gMDbTQB25Jebzbw0h43Pu2Si3wDTISCQ4agjC+8N4iUURS
 5yw8yeqwYdg4l44DJr09Q1YC43CVGhARn2dFQKKnTVr1x2e88UpHOZTfN9KrRqtQM0pW
 4SbAzUj7gt/0OxewlcWqBVhYihaxfIcqABO1tEP7yldeCSQgWyt7gumrVPw/8mBN2hft
 I4ixCRnCK5BWBbAwKYCtcc6X5CMvMehQSPOr1YncIwUvQ5RkullWQjXoT63q5jAIU3ZF
 2DXOhk163onSWhAaVaozEQZvwUZWzaoagCrJXCpWypa+vpC/VktyVyEt7fg/hO1bEoW8
 pp2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679333129;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TFjbf1hqGKTeNG29GCna0olkfNIXH80B4W/+/wvwthc=;
 b=FDDeWnQorFTu7Yxvbp6gCLsmjC/f6psAq0Ea4JSADJqUdbXG7djalWqTSVMYFL6HiF
 U9HZDaNuswFitMLkBBGCyYFhZQ9yM0NHuCWIj9iMIiCWn2XNhWhdtR5VmtngktsgKpwp
 zddy6BuoPeD3z7NtPnXsvxVgPfDjIqK43sReGXb+ZhfO+ihHgCla0wOtQ50/kVvoJXpr
 s+eq3R0q1tXOi0PGu27lEa6ZyorrYQJctAc1qt8cxzlsQUWW+e3/SHF3fPBnSa+IlcCT
 YWJWxkpCu29wxwKenWude//bLW6qEPwb1N2KpDnx8BUFO6m594fpn2pQ7WGhDgdjUy7y
 vjzQ==
X-Gm-Message-State: AO0yUKXJZSrZWMcml9flhM3b7Z05bDGyuCCik37LHq0cEbppHUi6/eNX
 klQVGW6FA5v85DfqCTLvJ1hYh8+IySark3y2l3Q=
X-Google-Smtp-Source: AK7set8A2ig0P7/M3s+VqagZD5H2PiVLLygkBloHuagQwx4lJ2s+gPrNpnecfaoTyt+bkIr5Xtjm/pxKnNjU/qynDCo=
X-Received: by 2002:a17:902:c40c:b0:19f:22aa:692e with SMTP id
 k12-20020a170902c40c00b0019f22aa692emr7406162plk.4.1679333128910; Mon, 20 Mar
 2023 10:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAE2MWkm=zvkF_Ge1MH7vn+dmMboNt+pOEEVSgSeNNPRY5VmroA@mail.gmail.com>
 <a4ce2c34-eabe-a11f-682a-4cecf6c3462b@blackwall.org>
In-Reply-To: <a4ce2c34-eabe-a11f-682a-4cecf6c3462b@blackwall.org>
From: Ujjal Roy <royujjal@gmail.com>
Date: Mon, 20 Mar 2023 22:55:17 +0530
Message-ID: <CAE2MWkkDNZuThePts_nU-LNYryYyWTYOMk5gmuoCoGPh4bf4ag@mail.gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 nikolay@nvidia.com, Kernel <linux-kernel@vger.kernel.org>, roopa@nvidia.com
Subject: Re: [Bridge] Multicast: handling of STA disconnect
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

Hi Nik,

Flushing MDB can only be done when we are managing it per station not
per port. For that we need to have MCAST_TO_UCAST, EHT and FAST_LEAVE.

Here one more point is - some vendors may offload MCAST_TO_UCAST
conversion in their own FW to reduce CPU.

So, the best way is to have MCAST_TO_UCAST enabled and MDB will become
per station, so we can delete MDB on disconnect. Shall, I create one
patch for review?

Thanks,
UjjaL Roy

On Mon, Mar 20, 2023 at 5:38=E2=80=AFPM Nikolay Aleksandrov <razor@blackwal=
l.org> wrote:
>
> On 20/03/2023 13:45, Ujjal Roy wrote:
> > Hi Nikolay,
> >
> > I have some query on multicast. When streams running on an STA and STA
> > disconnected due to some reason. So, until the MDB is timed out the
> > stream will be forwarded to the port and in turn to the driver and
> > dropps there as no such STA.
> >
> > So, is the multicast_eht handling this scenario to take any action
> > immediately? If not, can we do this to take quick action to reduce
> > overhead of memory and driver?
> >
> > I have an idea on this. Can we mark this port group (MDB entry) as
> > INACTIVE from the WiFi disconnect event and skip forwarding the stream
> > to this port in br_multicast_flood by applying the check? I can share
> > the patch on this.
> >
> > Thanks,
> > UjjaL Roy
>
> Hi,
> Fast leave and EHT (as that's v3's fast leave version) are about quickly =
converging when
> a leave is received (e.g. when there are no listeners to quickly remove t=
he mdb). They
> don't deal with interface states (IIUC). Why don't you just flush the por=
t's mdb entries
> on disconnect? That would stop fwding.
>
> Cheers,
>  Nik
>
>
