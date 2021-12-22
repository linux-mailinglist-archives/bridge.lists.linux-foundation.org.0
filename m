Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D61F647D8FB
	for <lists.bridge@lfdr.de>; Wed, 22 Dec 2021 22:52:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 517218145D;
	Wed, 22 Dec 2021 21:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yjeH8QdRvKNy; Wed, 22 Dec 2021 21:52:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D686F81454;
	Wed, 22 Dec 2021 21:52:42 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 91814C006E;
	Wed, 22 Dec 2021 21:52:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9424EC0012
 for <bridge@lists.linux-foundation.org>; Wed, 22 Dec 2021 21:52:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 751318145D
 for <bridge@lists.linux-foundation.org>; Wed, 22 Dec 2021 21:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OyJq91GCvZCS for <bridge@lists.linux-foundation.org>;
 Wed, 22 Dec 2021 21:52:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 328C381454
 for <bridge@lists.linux-foundation.org>; Wed, 22 Dec 2021 21:52:38 +0000 (UTC)
Received: from mail-wm1-f49.google.com ([209.85.128.49]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N17pC-1mJlFe3hHu-012aiD for <bridge@lists.linux-foundation.org>; Wed, 22 Dec
 2021 22:52:36 +0100
Received: by mail-wm1-f49.google.com with SMTP id l4so2469423wmq.3
 for <bridge@lists.linux-foundation.org>; Wed, 22 Dec 2021 13:52:36 -0800 (PST)
X-Gm-Message-State: AOAM532xSsBv+rOTouZBAyVHwXm146wCfHk2sfyxU4LIM9lXn8RplXdx
 Wvqb7RxKaukNkksbd5v3IQ3+/g07zwjonrZZUvg=
X-Google-Smtp-Source: ABdhPJwONx7Rpb6kHkRzhNXYi2y5zPn1dKRyaTxTjivyBhtZyVwbnbdTNourWsYruBa/96zO4qoNQ3X7TRsmR9Wpe2Y=
X-Received: by 2002:a7b:c448:: with SMTP id l8mr2105372wmi.173.1640209956314; 
 Wed, 22 Dec 2021 13:52:36 -0800 (PST)
MIME-Version: 1.0
References: <20211222191320.17662-1-repk@triplefau.lt>
In-Reply-To: <20211222191320.17662-1-repk@triplefau.lt>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 22 Dec 2021 22:52:20 +0100
X-Gmail-Original-Message-ID: <CAK8P3a18b63GoPKiTey8KpEusyffbN97gxP+NM3fyZnOYXv5zg@mail.gmail.com>
Message-ID: <CAK8P3a18b63GoPKiTey8KpEusyffbN97gxP+NM3fyZnOYXv5zg@mail.gmail.com>
To: Remi Pommarel <repk@triplefau.lt>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:NuNfaf4ddPTZh+Tc3kRlS9sN6InltSiJlV++E+EjC5+8PIQ/N6O
 aRVVBlMWtth920lElA6X3U+cnZ8a4tyZXOs5SsEgJo7/QN7rqeUDBl/D7Mo14ztOT8qCG9y
 G/8ZMFFPmrLHrs0Mid10enCy0X3k6KIR62qKnrn1Jy4Vf4nYlFdgQNC7re6XRlJJDISWJ0+
 t70XCQhzfDWRhcxKIciug==
X-UI-Out-Filterresults: notjunk:1;V03:K0:qVPTi2PkER0=:LKnUKB19PxZkZKaq0TTb/p
 hgPlimEdgEPZ7yIzbY43Bn5OtZrZPyDACj79ut81q1bbbot23MNbkmuqOLbL07e4vQyGmOXHL
 6pahpIvbljvXh4ErXVVbbA1B04oBL+TTQjc3DK6e2xc0+XHJZCTGSaImyVdJ1Zc8hLJy8JW6G
 7PnjDEykwiP5+fJbU7Qo/+orquk0I0Ut5f5b793Lg/rQHUgmCvNfg70tBrG99eW0snPDkJlqK
 /CqsEnvSbpqwqQQo8QlACb6pRHEHuLWjEX6Sc0mF86Dba55NWvMy3upTtkeuLLkCXyOfrF1Xj
 ZZpmBIw59caS0RWnsEq84WQO93fe3CXGbGobWLcDmw8KVBspc0MY7ztQvPiDHRHCrSw3LTem9
 T/vCYvh9m9AIPhVqn3p9MknVtKnPPgD25harysZOzK1Msd1SkaW33MA8qzAgIdJM/lnMAqwKe
 kVzkqOKj5O6IA6LCXYVSVGxDbuSqHYzvj2Mb6l4/dEhI8n9HzjI1YOvK80rvFfqFbWU6ONNZa
 vU5DLpDpL9VRJRy1lSislclZw/uLlB0zG1a6TdgWELaq2WBQPDi0ctf/69Pu8ZXRCA7Joulzl
 m8hUVmv84irJTd+fogP7Tmhkv5DXh1K6x3/uOgkvoOrtfAnlWmeUAJkGhMWKHBSThDwJoKI+4
 f4jDT0zDw/yik1h2CxhxmUpVMAWnG6nP/MsIhLt7c4nO1NlTmjshDVY7MA4p/4+oqwts=
Cc: Arnd Bergmann <arnd@arndb.de>, Networking <netdev@vger.kernel.org>,
 bridge@lists.linux-foundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] net: bridge: fix ioctl old_deviceless
	bridge argument
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

On Wed, Dec 22, 2021 at 8:13 PM Remi Pommarel <repk@triplefau.lt> wrote:
>
> Commit 561d8352818f ("bridge: use ndo_siocdevprivate") changed the
> source and destination arguments of copy_{to,from}_user in bridge's
> old_deviceless() from args[1] to uarg breaking SIOC{G,S}IFBR ioctls.
>
> Commit cbd7ad29a507 ("net: bridge: fix ioctl old_deviceless bridge
> argument") fixed only BRCTL_{ADD,DEL}_BRIDGES commands leaving
> BRCTL_GET_BRIDGES one untouched.
>
> The fixes BRCTL_GET_BRIDGES as well
>
> Fixes: 561d8352818f ("bridge: use ndo_siocdevprivate")
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>

Thanks for fixing the regression,

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

> ---
>  net/bridge/br_ioctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
> index db4ab2c2ce18..891cfcf45644 100644
> --- a/net/bridge/br_ioctl.c
> +++ b/net/bridge/br_ioctl.c
> @@ -337,7 +337,7 @@ static int old_deviceless(struct net *net, void __user *uarg)
>
>                 args[2] = get_bridge_ifindices(net, indices, args[2]);
>
> -               ret = copy_to_user(uarg, indices,
> +               ret = copy_to_user((void __user *)args[1], indices,
>                                    array_size(args[2], sizeof(int)))
>                         ? -EFAULT : args[2];

The intention of my broken patch was to make it work for compat mode as I did
in br_dev_siocdevprivate(), as this is now the only bit that remains broken.

This could be done along the lines of the patch below, if you see any value in
it. (not tested, probably not quite right).

       Arnd

diff --git a/net/bridge/br_ioctl.c b/net/bridge/br_ioctl.c
index db4ab2c2ce18..138aa96d73f9 100644
--- a/net/bridge/br_ioctl.c
+++ b/net/bridge/br_ioctl.c
@@ -102,19 +102,9 @@ static int add_del_if(struct net_bridge *br, int
ifindex, int isadd)
        return ret;
 }

-/*
- * Legacy ioctl's through SIOCDEVPRIVATE
- * This interface is deprecated because it was too difficult
- * to do the translation for 32/64bit ioctl compatibility.
- */
-int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq,
void __user *data, int cmd)
+static int br_dev_read_uargs(unsigned long *args, void __user *argp,
+                            void __user *data)
 {
-       struct net_bridge *br = netdev_priv(dev);
-       struct net_bridge_port *p = NULL;
-       unsigned long args[4];
-       void __user *argp;
-       int ret = -EOPNOTSUPP;
-
        if (in_compat_syscall()) {
                unsigned int cargs[4];

@@ -126,13 +116,29 @@ int br_dev_siocdevprivate(struct net_device
*dev, struct ifreq *rq, void __user
                args[2] = cargs[2];
                args[3] = cargs[3];

-               argp = compat_ptr(args[1]);
+               *argp = compat_ptr(args[1]);
        } else {
                if (copy_from_user(args, data, sizeof(args)))
                        return -EFAULT;

-               argp = (void __user *)args[1];
+               *argp = (void __user *)args[1];
        }
+}
+
+/*
+ * Legacy ioctl's through SIOCDEVPRIVATE
+ * This interface is deprecated because it was too difficult
+ * to do the translation for 32/64bit ioctl compatibility.
+ */
+int br_dev_siocdevprivate(struct net_device *dev, struct ifreq *rq,
void __user *data, int cmd)
+{
+       struct net_bridge *br = netdev_priv(dev);
+       struct net_bridge_port *p = NULL;
+       unsigned long args[4];
+       void __user *argp;
+       int ret;
+
+       ret = br_dev_read_uargs(args, &argp, data);

        switch (args[0]) {
        case BRCTL_ADD_IF:
@@ -301,6 +307,9 @@ int br_dev_siocdevprivate(struct net_device *dev,
struct ifreq *rq, void __user

        case BRCTL_GET_FDB_ENTRIES:
                return get_fdb_entries(br, argp, args[2], args[3]);
+
+       default:
+               ret = -EOPNOTSUPP;
        }

        if (!ret) {
@@ -315,10 +324,13 @@ int br_dev_siocdevprivate(struct net_device
*dev, struct ifreq *rq, void __user

 static int old_deviceless(struct net *net, void __user *uarg)
 {
-       unsigned long args[3];
+       unsigned long args[4];
+       void __user *argp;
+       int ret;

-       if (copy_from_user(args, uarg, sizeof(args)))
-               return -EFAULT;
+       ret = br_dev_read_uargs(args, &argp, data);
+       if (ret)
+               return ret;

        switch (args[0]) {
        case BRCTL_GET_VERSION:
@@ -337,7 +349,7 @@ static int old_deviceless(struct net *net, void
__user *uarg)

                args[2] = get_bridge_ifindices(net, indices, args[2]);

-               ret = copy_to_user(uarg, indices,
+               ret = copy_to_user(argp, indices,
                                   array_size(args[2], sizeof(int)))
                        ? -EFAULT : args[2];

@@ -353,7 +365,7 @@ static int old_deviceless(struct net *net, void
__user *uarg)
                if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
                        return -EPERM;

-               if (copy_from_user(buf, (void __user *)args[1], IFNAMSIZ))
+               if (copy_from_user(buf, argp, IFNAMSIZ))
                        return -EFAULT;

                buf[IFNAMSIZ-1] = 0;
