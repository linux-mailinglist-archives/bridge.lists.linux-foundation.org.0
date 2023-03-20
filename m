Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2611C6C1E50
	for <lists.bridge@lfdr.de>; Mon, 20 Mar 2023 18:41:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C334360FA7;
	Mon, 20 Mar 2023 17:41:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C334360FA7
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=X3mlmfkd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mFPEp27Dv_c; Mon, 20 Mar 2023 17:41:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 148FD6101D;
	Mon, 20 Mar 2023 17:41:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 148FD6101D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BFAF5C0089;
	Mon, 20 Mar 2023 17:41:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0079FC0032
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:41:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD5B6404DD
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD5B6404DD
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=X3mlmfkd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-ZpAOFXXdE5 for <bridge@lists.linux-foundation.org>;
 Mon, 20 Mar 2023 17:41:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0D5240298
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0D5240298
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 17:41:31 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id fb38so2529966pfb.7
 for <bridge@lists.linux-foundation.org>; Mon, 20 Mar 2023 10:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679334091;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+jXsORzAzATpiIMon/GzfxOK7NLxGV8EwmaMIYBmS0I=;
 b=X3mlmfkdl1WpAb/hv+kWhBJGn/eOx9nnn8RjNStTAaTfxh9zjIzpbmxCN4LkVo59LL
 d48b7/nMnQZYfb4Xn+Fnv1AYco0fp2qMYUVGkQJCJb9u+5Q6uWGObaRQRiU7MLlKgzvI
 keEE6vI+SjAcMNrTQj+ni0Wl9iTq0mGRZwcJgvAFnUAdwFn/cxMrdkh701Ilv2Qohsrk
 eqIlvT5wLH0Oj0hMIfFJ8ZS1Xt0+hSPeV+5HEqhMk0VRY55rcMhEkMYpfYIlnQUto5jH
 P3RcfgKUfEIBzJAOMYkn5eHsT6k2QzUrVf0nhZs2SGAJkWdHDtUjzAoGsH6UEA7EMSLA
 hfxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679334091;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+jXsORzAzATpiIMon/GzfxOK7NLxGV8EwmaMIYBmS0I=;
 b=27FcZMUq24oBcH00UjhUfpDtXzVp4uBjwVWB5fAXB18UE6H9wlcPpIQya0DEcU17gf
 EtKgBoqFuHnYLW+x7xLnvTIeZ8jyXME9+xdXezXL+XdsLDRS8BMw+DKMbJ1K7nN9Ed7i
 plZd/0jqS+SR24nz8JrL0M4Iimy0GTnoNdLdFTd+xzdl6mCyFZAldDOkdnNVP2u/aq1y
 8HDzwjU1KUIOv57jpNTrfHEVqEfKpGIzbg3mTfZ3pUGsns/wPFYXv5uFaocaGXJw53DQ
 3U0LzUH0bS/XKaVD4VljnQ1kBLOxZud94kGRSq/9EM/mKAZrSHvgmgTlb59M0RjzTeyL
 2nRg==
X-Gm-Message-State: AO0yUKVhhjJbddNPz6Rxouh362igwhPTD1RrYl0OKAnpB6z/4+tISLtJ
 flYLpZgW4Kb/Ic74+XDFZShvdvgcDGCBGWpomv8=
X-Google-Smtp-Source: AK7set//+jyxRSt0k/E22iqEqLXnguu06v5ypSdA0D50hd788gr3RF0q6o+tORTrExIVAv9LiKvEqvWsazq5AekVz1E=
X-Received: by 2002:a65:5183:0:b0:507:8088:9e0d with SMTP id
 h3-20020a655183000000b0050780889e0dmr2197473pgq.7.1679334090955; Mon, 20 Mar
 2023 10:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAE2MWkm=zvkF_Ge1MH7vn+dmMboNt+pOEEVSgSeNNPRY5VmroA@mail.gmail.com>
 <a4ce2c34-eabe-a11f-682a-4cecf6c3462b@blackwall.org>
 <CAE2MWkkDNZuThePts_nU-LNYryYyWTYOMk5gmuoCoGPh4bf4ag@mail.gmail.com>
In-Reply-To: <CAE2MWkkDNZuThePts_nU-LNYryYyWTYOMk5gmuoCoGPh4bf4ag@mail.gmail.com>
From: Ujjal Roy <royujjal@gmail.com>
Date: Mon, 20 Mar 2023 23:11:19 +0530
Message-ID: <CAE2MWkn=ygeVwj=j7ggLd+10mGjPJEC8Et5MGHVzs=dGWLccYg@mail.gmail.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kernel <linux-kernel@vger.kernel.org>, roopa@nvidia.com
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

Any idea if the station connects back immediately after say 10 sec?
How to resume the session immediately if we delete the MDB on
disconnect? Currently, the station needs to wait until the next
general query to come to STA.

My idea is to send a general query to that specific port to resume the
session immediately from the STA connect event. This will create the
MDB immediately and resume the stream, as we have deleted the MDB from
disconnect.

Thanks,
UjjaL Roy

On Mon, Mar 20, 2023 at 10:55=E2=80=AFPM Ujjal Roy <royujjal@gmail.com> wro=
te:
>
> Hi Nik,
>
> Flushing MDB can only be done when we are managing it per station not
> per port. For that we need to have MCAST_TO_UCAST, EHT and FAST_LEAVE.
>
> Here one more point is - some vendors may offload MCAST_TO_UCAST
> conversion in their own FW to reduce CPU.
>
> So, the best way is to have MCAST_TO_UCAST enabled and MDB will become
> per station, so we can delete MDB on disconnect. Shall, I create one
> patch for review?
>
> Thanks,
> UjjaL Roy
>
> On Mon, Mar 20, 2023 at 5:38=E2=80=AFPM Nikolay Aleksandrov <razor@blackw=
all.org> wrote:
> >
> > On 20/03/2023 13:45, Ujjal Roy wrote:
> > > Hi Nikolay,
> > >
> > > I have some query on multicast. When streams running on an STA and ST=
A
> > > disconnected due to some reason. So, until the MDB is timed out the
> > > stream will be forwarded to the port and in turn to the driver and
> > > dropps there as no such STA.
> > >
> > > So, is the multicast_eht handling this scenario to take any action
> > > immediately? If not, can we do this to take quick action to reduce
> > > overhead of memory and driver?
> > >
> > > I have an idea on this. Can we mark this port group (MDB entry) as
> > > INACTIVE from the WiFi disconnect event and skip forwarding the strea=
m
> > > to this port in br_multicast_flood by applying the check? I can share
> > > the patch on this.
> > >
> > > Thanks,
> > > UjjaL Roy
> >
> > Hi,
> > Fast leave and EHT (as that's v3's fast leave version) are about quickl=
y converging when
> > a leave is received (e.g. when there are no listeners to quickly remove=
 the mdb). They
> > don't deal with interface states (IIUC). Why don't you just flush the p=
ort's mdb entries
> > on disconnect? That would stop fwding.
> >
> > Cheers,
> >  Nik
> >
> >
