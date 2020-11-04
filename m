Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 841E52A6628
	for <lists.bridge@lfdr.de>; Wed,  4 Nov 2020 15:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A2F886990;
	Wed,  4 Nov 2020 14:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scJzOzKLd3CX; Wed,  4 Nov 2020 14:14:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C78F867B0;
	Wed,  4 Nov 2020 14:14:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 613B5C0051;
	Wed,  4 Nov 2020 14:14:51 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0ABC5C0051
 for <bridge@lists.linux-foundation.org>; Wed,  4 Nov 2020 14:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE8D185C5E
 for <bridge@lists.linux-foundation.org>; Wed,  4 Nov 2020 14:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MK5rQgxPJXJj for <bridge@lists.linux-foundation.org>;
 Wed,  4 Nov 2020 14:14:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2136D85F0F
 for <bridge@lists.linux-foundation.org>; Wed,  4 Nov 2020 14:14:49 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id f9so27343008lfq.2
 for <bridge@lists.linux-foundation.org>; Wed, 04 Nov 2020 06:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S4tBycIgGpMbcu0VMkG4KdXUec3BMb9c9CGZHnWqcbY=;
 b=Uby3FcRKI9yEd+t292wdoGg6qfKgNlGfPsu1x0mVGxqu4Y47S9/9jU5Vxln+Ev3Qhx
 QbyLO4xbXEt4pFY2a6mKUgkwVQd8WgbDmCqx2kIdEjJ02R7HeuRwxSJPlT7xxEDIDXuB
 BWexSWV6ahCPrWKjTIXgATLahYkMiPwplw5+TyHp2UIwyIXwY1U2G6kx/jypkG/dWjJI
 3rXYCOA7tQeqDXObwuVj2T52B7EBFN44hOsCOKfkH06qOtYgOvqf/oqzYihC2vhVVubS
 DDE+VGcMLLIizqcQ+bRTmv8Bc3vRrrV/Ij/sPzOUEo6F3pc2QmtXHDqPP9GtETPHGBy5
 Bodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S4tBycIgGpMbcu0VMkG4KdXUec3BMb9c9CGZHnWqcbY=;
 b=pTKbz6vFY0K3VYRbFXDN4GbYtBVPh84HieSVUn+cdLNkghUFyIuf+GXEGMZTZWqcTs
 GiktY+hsGES4HMv8qaN+GxdFmzmDngS0nzXy/FEYT5XLbxA4gzF3elti4HDnZDMYwItU
 5UGspm2dItVZwm7uSwFF43lLNX36hIGRJ0DswZWIgg13qJVWQ9q16ss8kZkfoyQiE9PL
 FpEJqpKrJvq9WcJzl4udwoXG9O37gvLbR0daNIRaD2k1TohX7Tt5u+FMKvcZ2IuF94gh
 rC+2+ghx7S5gw04L15LUj42Om/Sj4fbJH7NT+Kg560nVfbibf9uhSMfFV33M/cLVEc8o
 paTg==
X-Gm-Message-State: AOAM531WsMSn14IrZqxbyKNiyC3jRBQL1Q82sRL23DU+NX66v4RQnrSj
 AVuiC/hGbYbNKFXwonV3fEFrOX9O8lk9Egf6G48=
X-Google-Smtp-Source: ABdhPJxEdf8jIlmGFSZss8OzuKYQRSQfRi7r+QLtsgBNuf5OdXFYraddLIW7vnv6yeGfmeHJX8IG9l5UycMrveELxFs=
X-Received: by 2002:a19:220d:: with SMTP id i13mr9204844lfi.37.1604499287209; 
 Wed, 04 Nov 2020 06:14:47 -0800 (PST)
MIME-Version: 1.0
References: <20201102143828.5286-1-menglong8.dong@gmail.com>
 <067c94269abed15f777ac078a216be314c935fd5.camel@nvidia.com>
In-Reply-To: <067c94269abed15f777ac078a216be314c935fd5.camel@nvidia.com>
From: Menglong Dong <menglong8.dong@gmail.com>
Date: Wed, 4 Nov 2020 22:14:35 +0800
Message-ID: <CADxym3bWqziz1-rHEZXC10JBgfO0Jc5S9nWEW2s3G09VvWioTA@mail.gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "dong.menglong@zte.com.cn" <dong.menglong@zte.com.cn>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net: bridge: disable multicast while delete
	bridge
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

Dear Nik,

On Wed, Nov 4, 2020 at 12:26 AM Nikolay Aleksandrov <nikolay@nvidia.com> wrote:
>
> On Mon, 2020-11-02 at 22:38 +0800, Menglong Dong wrote:
> > From: Menglong Dong <dong.menglong@zte.com.cn>
> >
> > This commit seems make no sense, as bridge is destroyed when
> > br_multicast_dev_del is called.
> >
> > In commit b1b9d366028f
> > ("bridge: move bridge multicast cleanup to ndo_uninit"), Xin Long
> > fixed the use-after-free panic in br_multicast_group_expired by
> > moving br_multicast_dev_del to ndo_uninit. However, that patch is
> > not applied to 4.4.X, and the bug exists.
> >
> > Fix that bug by disabling multicast in br_multicast_dev_del for
> > 4.4.X, and there is no harm for other branches.
> >
> > Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>
> > ---
> >  net/bridge/br_multicast.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> > index eae898c3cff7..9992fdff2951 100644
> > --- a/net/bridge/br_multicast.c
> > +++ b/net/bridge/br_multicast.c
> > @@ -3369,6 +3369,7 @@ void br_multicast_dev_del(struct net_bridge *br)
> >       hlist_for_each_entry_safe(mp, tmp, &br->mdb_list, mdb_node)
> >               br_multicast_del_mdb_entry(mp);
> >       hlist_move_list(&br->mcast_gc_list, &deleted_head);
> > +     br_opt_toggle(br, BROPT_MULTICAST_ENABLED, false);
> >       spin_unlock_bh(&br->multicast_lock);
> >
> >       br_multicast_gc(&deleted_head);
>
> This doesn't make any sense. It doesn't fix anything.
> If 4.4 has a problem then the relevant patches should get backported to it.
> We don't add random changes to fix older releases.
>
> Cheers,
>  Nik
>
> Nacked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Thanks for your patient explanation, and I see it now~

Cheers,
Menglong Dong
